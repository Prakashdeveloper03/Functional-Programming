defmodule Solution do
  def reduce(c, acc) do
    {count, oldC} = acc

    if oldC == c do
      {nil, {count + 1, c}}
    else
      n =
        if count > 0 do
          count + 1
        else
          ""
        end

      {"#{oldC}#{n}", {0, c}}
    end
  end

  def compress(input) do
    {row, _} =
      (input <> " ")
      |> String.codepoints()
      |> Enum.map_reduce({0, ""}, fn x, acc -> Solution.reduce(x, acc) end)

    row
    |> Enum.filter(fn x -> x != nil && x != "" end)
    |> Enum.join()
  end
end

[str] = IO.read(:stdio, :all) |> String.split("\n")
Solution.compress(str) |> IO.puts()
