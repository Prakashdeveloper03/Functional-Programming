defmodule Solution do
  def is_function(list) do
    Enum.map(list, fn [a, _b] -> a end)
    |> (fn a ->
          if MapSet.size(MapSet.new(a)) == Enum.count(list) do
            "YES"
          else
            "NO"
          end
        end).()
  end
end

input =
  IO.read(:stdio, :all)
  |> String.split("\n")

[_ | elements] = input

Enum.map(elements, fn x ->
  String.split(x, " ")
  |> Enum.map(fn x -> Integer.parse(x) |> elem(0) end)
end)
|> Enum.chunk_by(fn x -> Enum.count(x) end)
|> Enum.filter(fn [x | _] -> Enum.count(x) == 2 end)
|> Enum.map(fn x -> Solution.is_function(x) end)
|> Enum.join("\n")
|> IO.puts()
