defmodule RaspberryPi do
  use Application

  @moduledoc """
  Documentation for RaspberryPi.
  """

  @doc """
  Hello world.

  ## Examples

      iex> RaspberryPi.hello()
      :world

  """

  def hello do
    :world
  end

  def start(_type, _args) do
    IO.puts("Started app")
    IO.puts("Hello #{hello()}")

    # ToDo: Understand this logic...
    children = []
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
