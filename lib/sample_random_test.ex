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

  defp rand64() do
    :rand.uniform(Bitwise.bsl(1, 64))
  end

  defp singular_value() do
    :rand.seed(:exs1024s, {52, 259, 32})
    {rand64(), rand64()}
  end
end
