defmodule SampleRandomTest do
  @moduledoc """
  Documentation for `SampleRandomTest`.
  """

  @number 100

  def function(x) do
    Enum.reduce_while(singular_values(@number), x, fn {v, w}, x ->
      unless x == v do
        {:cont, x}
      else
        {:halt, w}
      end
    end)
  end

  defp rand16() do
    :rand.uniform(Bitwise.bsl(1, 16))
  end

  defp singular_values(number) do
    :rand.seed(:exs1024s, {52, 259, 32})
    Enum.map(1..number, fn _ -> {rand16(), rand16()} end)
  end
end
