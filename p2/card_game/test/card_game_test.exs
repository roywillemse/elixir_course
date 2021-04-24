defmodule CardGameTest do
  use ExUnit.Case
  doctest CardGame

  test "greets the world" do
    assert CardGame.hello() == :world
  end
end
