# Flyiin

## Makefile
- Lint and format targets are to keep track of styling in elixir
- test target is to run mix via make
- run is to run app
- outdated is to check if libs are outdated

## Phoenix
The usage of Phoenix is due to the elixir community standart. I prefer to work with webserver that implement interceptor concept, like Clojure's Pedestal and Java Spark, this is due to their  ability to evolve by writing new interceptor or by changing the service configs. I have removed most of the files that are useless for an API, like views. There is a healthcheck for stabilizing purpose. Due to the usage of scope and routing pattern, the path is `/findCheapestOffer/?origin=<IATA>&destination=<IATA>&departureDate=<DATE>`

## HTTP Client
Well, I had in mind to use `HTTPoison`, but by some typo during search of the mix deps info I started using `HTTPotion`, which was pretty good for this low demand service.

## Mox
I used `Mox` to mock the request make to the apis, this helped develop as also focus on testing
Factory class was used to return the soap responses from the API. I removed unused lines of XML to reduce garbage.
Mox is available only for testing env.

## Testing
Although I started the project from top-down, the core logic was made bottom-up, which can be easily viewed on commits. This extensive testing and change of approach made possible to remove redundant tests, but generated some extra functions, which also did not help on the pattern matching side. The bottom-up strategy made it harder to use less verbose `Task` functions, such as `async_stream`.

### Amedeus responds 200 with erros
Due to the fact tha Amadeus and Sabre may return a status code 200 but with an invalid xml, I included the following lines:
```ex
# Flyiin.Cheapest.Http.Main
def get_best_value(response, path, status, errors) when status == 200 and errors < 1 do
...

def process_task(task, path) do
  ...
  errors = task_result |> Map.get(:body) |> xpath(~x"//Error"l) |> length
  get_best_value(task_result, path, Map.get(task_result, :status_code), errors)
end
```
This was not tested because I had no more time to work on the project, but I would just create a new factory that returns a status 200 with a body containing the tags `<Error>`. 

## Concurrency
As this had only two requests and the xpath lib is pretty fast, the only concurrency I used was `Task.async`. The function `fetch_airlines_pricing` would be prettier if I did not have to assign values inside the map to make a request, but the general complexity would have increased. Another way I think it would be a good solution for multiple "Backend APIs" is to use `infosys`.

## Security
I forgot in the first commit to read the `api_keys` from the `env_vars`, as they will expire and have limited, I am not so worried about their public usage.

obs. AFKL API was having problems to respond.

# TODO
- [x] Request date is incorrectly formated -> 400
- [x] Request iatas dont have 3 letters -> 400
- [x] Task return != 2xx for one request
