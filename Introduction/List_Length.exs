defmodule Solution do
  IO.read(:stdio, :all)
  |> String.split("\n")
  |> Enum.reduce(0, fn _x, acc -> acc + 1 end)
  |> IO.puts()
end
