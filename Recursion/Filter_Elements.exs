defmodule Solution do
  def filter_more_then(list, n) do
    list
    |> Enum.reduce([], fn (x, acc) ->
                         Keyword.update(acc, String.to_atom(x), 1, &(&1 + 1) )
                       end)
    |> Keyword.to_list
    |> Enum.filter(fn {_, count} -> count >= n end)
    |> Enum.map(fn {el, _} -> "#{el}" end)
  end

  def main do
    num_tests = IO.gets("") |> String.trim |> String.to_integer
    for _ <- 1..num_tests do
      [_, k] = IO.gets("") |> String.split |> Enum.map(&String.to_integer(&1))

      IO.gets("")
        |> String.split
        |> filter_more_then(k)
        |> Enum.join(" ")
        |> (fn(x) -> if x == "", do: "-1", else: x end).()
        |> IO.puts
    end
  end
end

Solution.main
