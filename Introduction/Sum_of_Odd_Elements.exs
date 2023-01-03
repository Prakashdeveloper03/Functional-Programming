defmodule Solution do
  def main() do
    IO.read(:stdio, :all)
    |> String.split([" ", "\n"])
    |> Enum.map(fn x -> String.to_integer(x) end)
    |> Enum.filter(fn x -> rem(x, 2) != 0 end)
    |> Enum.reduce(fn x, acc -> x + acc end)
    |> IO.puts()
  end
end

Solution.main()
