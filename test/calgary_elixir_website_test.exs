defmodule CalgaryElixirWebsiteTest do
  use ExUnit.Case
  doctest CalgaryElixirWebsite

  test "greets the world" do
    assert CalgaryElixirWebsite.hello() == :world
  end
end
