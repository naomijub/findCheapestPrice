defmodule Flyiin.MixProject do
  use Mix.Project

  def project do
    [
      app: :flyiin,
      version: "0.1.0",
      elixir: "~> 1.5",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {Flyiin.Application, []},
      extra_applications: applications(Mix.env())
    ]
  end

  defp applications(:test), do: applications(:default) ++ [:mox]
  defp applications(_), do: [:logger, :runtime_tools, :httpotion]

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.4.9"},
      {:phoenix_pubsub, "~> 1.1"},
      {:phoenix_html, "~> 2.11"},
      {:phoenix_live_reload, "~> 1.2", only: :dev},
      {:gettext, "~> 0.11"},
      {:jason, "~> 1.1"},
      {:plug_cowboy, "~> 2.0"},
      {:httpotion, "~> 3.1.0"},
      {:sweet_xml, "~> 0.6.6"},
      {:mox, "~>0.5", only: :test},
      {:credo, "~> 1.0.0", only: [:dev, :test], runtime: false}
    ]
  end
end
