defmodule GenFsmCompatBrokenFromElixirTest do
  use ExUnit.Case
  doctest GenFsmCompatBrokenFromElixir

  test "greets the world" do
    assert GenFsmCompatBrokenFromElixir.hello() == :world
  end
end
