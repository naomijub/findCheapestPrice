defmodule Flyiin.Cheapest.Main do
  @moduledoc """
  Module responsable for determine the cheapest 
  """
  import SweetXml
  import HTTPotion.Response
  alias Flyiin.Cheapest.Airlines
  alias Flyiin.Cheapest.Http.Main, as: HTTPm

  defp extract_json(airline) do
    Jason.encode!(%{data: %{cheapestOffer: airline}})
  end

  def cheapest_airline(airlines) when airlines == [] do
    extract_json(%{})
  end

  def cheapest_airline(airlines) when length(airlines) == 1 do
    extract_json(List.first(airlines))
  end

  def cheapest_airline(airlines) do
    airline =
      airlines
      |> Enum.filter(fn x -> Map.get(x, :amount) >= 0 end)
      |> Enum.min_by(&Map.get(&1, :amount))

    extract_json(airline)
  end

  def fetch_airlines_pricing(airlines, _, _, _) when airlines == [], do: []

  def fetch_airlines_pricing(airlines, origin, destination, date) do
    Airlines.get_available_airlines()
    |> Enum.map(fn airline ->
      info = Enum.find(airlines, fn x -> Map.fetch(x, :name) == {:ok, airline} end)
      body = apply(Airlines, Map.get(info, :body), [origin, destination, date])

      {airline, HTTPm.post_args(Map.get(info, :url), body, Map.get(info, :headers)),
       Map.get(info, :xpath)}
    end)
    |> Enum.to_list()
  end

  def get_best_value(response, path, status, errors) when status == 200 and errors < 1 do
    response
    |> Map.get(:body)
    |> xpath(path)
    |> Enum.map(fn x -> x |> to_string |> Float.parse() |> elem(0) end)
    |> Enum.min()
  end

  def get_best_value(_, _, _, _) do
    -1
  end

  def process_task(task, path) do
    task_result = Task.await(task, 50000)
    errors = task_result |> Map.get(:body) |> xpath(~x"//Error"l) |> length
    get_best_value(task_result, path, Map.get(task_result, :status_code), errors)
  end

  def consolidate_best_prices(tasks) do
    tasks
    |> Enum.map(fn task_tuple ->
      {code, task, path} = task_tuple
      %{airline: code, amount: process_task(task, path)}
    end)
    |> cheapest_airline()
  end

  def find(origin, destination, date) do
    Airlines.get_airlines()
    |> fetch_airlines_pricing(origin, destination, date)
    |> consolidate_best_prices
  end
end
