defmodule Calculate do
  def area(list), do: area(list, list, 0)

  def area([{x1, y1} | [{x2, y2} | _] = tail], list, acc),
    do: area(tail, list, acc + side_length(x1, x2, y1, y2))

  def area([{x1, y1} | _], [{x2, y2} | _], acc) do
    acc + side_length(x1, x2, y1, y2)
  end

  def side_length(x1, x2, y1, y2), do: (x1 + x2) * (y1 - y2)
end

defmodule Solution do
  def main do
    [n | _] = :line |> IO.read() |> convert()

    n
    |> read_lines()
    |> Calculate.area()
    |> abs()
    |> Kernel./(2)
    |> IO.puts()
  end

  def read_lines(n) do
    Enum.reduce(1..n, [], fn _, acc ->
      [x, y] = :line |> IO.read() |> convert()
      acc ++ [{x, y}]
    end)
  end

  def convert(str), do: str |> String.split() |> Enum.map(&String.to_integer/1)
end

Solution.main()
