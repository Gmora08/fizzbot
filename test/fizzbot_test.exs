defmodule FizzbotTest do
  use ExUnit.Case
  doctest Fizzbot

  test "greets the world" do
    assert Fizzbot.hello() == :world
  end
end
