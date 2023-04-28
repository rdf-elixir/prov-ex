defmodule PROVTest do
  use ExUnit.Case
  doctest PROV

  test "greets the world" do
    assert PROV.hello() == :world
  end
end
