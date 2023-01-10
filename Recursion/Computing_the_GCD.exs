defmodule Solution do
  def gcd([x, y]) when x == y, do: x
  def gcd([x, y]) when x > y, do: gcd([x - y, y])
  def gcd([x, y]), do: gcd([x, y - x])
end

IO.read(:stdio, :all)
|> String.split()
|> Enum.map(&String.to_integer/1)
|> Solution.gcd()
|> IO.puts()
