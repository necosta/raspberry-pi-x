defmodule RaspberryPiTest do
  use ExUnit.Case
  doctest RaspberryPi

  test "greets the world" do
    assert RaspberryPi.hello() == :world
  end
end
