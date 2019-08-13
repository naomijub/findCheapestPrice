setup:
	mix deps.get && mix deps.compile && mix compile

lint: format
	mix credo --strict

format:
	mix format

outdated:
	mix hex.outdated

run:
	MIX_ENV=dev mix phx.server