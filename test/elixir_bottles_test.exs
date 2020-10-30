defmodule ElixirBottlesTest do
  use ExUnit.Case
  doctest ElixirBottles

  test "greets the world" do
    assert ElixirBottles.hello() == :world
  end
end
