# RaspberryPi

Playground project built in [Elixir](https://elixir-lang.org/)

## How to

* Format: `mix format`
* Install dependencies: `mix deps.get`

* Compile: `mix compile`
* Setup database: `mix ecto.setup`
* Install Node.js libs: `cd assets && npm install`

* Test: `mix test --no-start`
* Run: `mix phx.server`

Endpoint available at [`localhost:4000`](http://localhost:4000)

**Note:**

This project requires a Postgresql instance running on the default port
for `ecto.create` to run correctly. 
