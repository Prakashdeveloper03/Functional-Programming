defmodule Solution do
  def ev(x, resp, iter) do
    case iter do
      11 -> 0
      _ -> resp + ev(x, x * resp / iter, iter + 1)
    end
  end
end

input =
  IO.read(:stdio, :all)
  |> String.split("\n")
  |> Enum.filter(fn x -> x != "" end)
  |> Enum.map(fn x -> Float.parse(x) |> elem(0) end)

[_n | elements] = input
Enum.each(elements, fn x -> Solution.ev(x, 1, 1) |> IO.puts() end)
