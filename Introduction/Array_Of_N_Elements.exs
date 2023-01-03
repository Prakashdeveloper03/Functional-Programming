defmodule Solution do
  def main() do
    n = IO.gets("") |> String.to_integer()
    Range.new(1, n) |> Enum.to_list() |> IO.inspect(limit: :infinity)
  end
end

Solution.main()
