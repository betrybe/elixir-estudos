defmodule CollectionsTest do
  use ExUnit.Case
  doctest Collections

  test "greets the world" do
    assert Collections.hello() == :world
  end
end
