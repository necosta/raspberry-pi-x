# RaspberryPi

Playground project built in [Elixir](https://elixir-lang.org/)

## How to

* Format: `mix format`
* Fetch dependencies: `mix deps.get`
* Compile: `mix compile`
* Test: `mix test --no-start`
* Run: `mix run --no-halt`

## Examples
`curl -X GET http://localhost:8088/result`

`curl -X POST http://localhost:8088/add?number=123`

`curl -X POST http://localhost:8088/sub?number=12`
