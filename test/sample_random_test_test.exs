defmodule SampleRandomTestTest do
  use ExUnit.Case
  doctest SampleRandomTest

  test "greets the world" do
    assert SampleRandomTest.hello() == :world
  end
end
