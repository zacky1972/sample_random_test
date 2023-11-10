defmodule SampleRandomTest do
  @moduledoc """
  Documentation for `SampleRandomTest`.
  """

  def function(x) do
    {v, w} = singular_value()

    unless x == v do
      x
    else
      w
    end
  end

  defp rand16() do
    :rand.uniform(Bitwise.bsl(1, 16))
  end

  defp singular_value() do
    :rand.seed(:exs1024s, {52, 259, 32})
    {rand16(), rand16()}
  end
end
