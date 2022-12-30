defmodule ListUtil do
  def invert([head | tail], acc) do
    invert(tail, [head | acc])
  end

  def invert([], acc) do
    acc
  end
end

defmodule Solution do
  IO.read(:all)
  |> String.split
  |> Enum.map(&String.to_integer/1)
  |> (&(ListUtil.invert(&1, []))).()
  |> Enum.each(&IO.puts/1)
end
