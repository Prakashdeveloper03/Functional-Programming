defmodule Solution do
  def perimeter(elements) do
    [first | _] = elements

    Enum.reduce(elements ++ [first], {0, nil}, fn [x, y], {p, last} ->
      if last == nil do
        {0, [x, y]}
      else
        [ox, oy] = last
        distance = :math.sqrt(:math.pow(x - ox, 2) + :math.pow(y - oy, 2))
        {p + distance, [x, y]}
      end
    end)
    |> elem(0)
  end
end

input =
  IO.read(:stdio, :all)
  |> String.split("\n")
  |> Enum.map(fn l -> String.split(l, " ") end)
  |> Enum.map(fn l -> {l, Enum.count(l)} end)
  |> Enum.filter(fn {_, c} -> c > 1 end)
  |> Enum.map(fn {coords, _} -> coords |> Enum.map(fn x -> Integer.parse(x) |> elem(0) end) end)

Solution.perimeter(input)
|> IO.puts()
