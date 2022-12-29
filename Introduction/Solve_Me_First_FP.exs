defmodule Solution do
  {n1, _} = IO.gets("") |> Integer.parse()
  {n2, _} = IO.gets("") |> Integer.parse()
  (n1 + n2) |> IO.puts()
end
