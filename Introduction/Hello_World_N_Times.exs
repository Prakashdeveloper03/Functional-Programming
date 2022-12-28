defmodule Solution do
  {n, _} = IO.gets('') |> Integer.parse()

  for _ <- 1..n do
    "Hello World" |> IO.puts()
  end
end
