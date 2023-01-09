defmodule Solution do
    def fib(1), do: 0
    def fib(2), do: 1
    def fib(n) do
        fib(n - 1) + fib(n - 2)
    end
end

IO.gets("")
|> String.trim
|> String.to_integer
|> Solution.fib
|> IO.puts
