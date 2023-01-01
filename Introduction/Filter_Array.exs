defmodule Solution do
  [max | tail] =
    IO.read(:all)
    |> String.split()
    |> Enum.map(&String.to_integer/1)

  tail
  |> Enum.filter(&(&1 < max))
  |> Enum.each(&IO.puts/1)
end
