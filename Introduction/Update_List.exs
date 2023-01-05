defmodule Absolute do
  def abs(x) when x < 0, do: -x
  def abs(x), do: x
end

defmodule Solution do
  IO.read(:all)
  |> String.split
  |> Enum.map(&String.to_integer/1)
  |> Enum.map(&Absolute.abs/1)
  |> Enum.each(&IO.puts/1)
end
