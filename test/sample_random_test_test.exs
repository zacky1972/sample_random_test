defmodule SampleRandomTestTest do
  use ExUnit.Case
  doctest SampleRandomTest

  describe "function" do
    test "simple test" do
      assert SampleRandomTest.function(1) == 1
    end

    @tag random: true
    test "random test" do
      :rand.seed(:exs1024s)

      1..10_000
      |> Enum.map(fn _ -> :rand.uniform(Bitwise.bsl(1, 16)) end)
      |> Enum.map(& {&1, SampleRandomTest.function(&1)})
      |> Enum.map(fn {x, y} -> assert x == y end)
    end
  end
end
