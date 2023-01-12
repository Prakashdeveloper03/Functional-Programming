defmodule Solution do
  def main do
    x = IO.gets("") |> String.trim() |> String.to_integer()
    n = IO.gets("") |> String.trim() |> String.to_integer()

    solve(x, n, 1)
    |> IO.puts()
  end

  def solve(x, n, accum) do
    power = (x - :math.pow(accum, n)) |> round

    result =
      cond do
        power == 0 -> 1
        power < 0 -> 0
        true -> solve(power, n, accum + 1) + solve(x, n, accum + 1)
      end

    result
  end
end

Solution.main()
