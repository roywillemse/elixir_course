defmodule CalcTest do
  def fact(0), do: 1
  def fact(a), do: a * fact(a - 1)
end

# [1,2,3] => 1 * 2 * 3 * 4
defmodule ListUtils do
  def alt_max([head | tail]), do: alt_max(tail, head)

  def alt_max([head | tail], current_maximum) when current_maximum < head do
    alt_max(tail, head)
  end

  def alt_max([head | tail], current_maximum) when current_maximum >= head do
    alt_max(tail, current_maximum)
  end

  def alt_max([], current_maximum), do: current_maximum

  def max([first]), do: first

  def max([first, second | tail]) when first >= second do
    max([first | tail])
  end

  def max([first, second | tail]) when first < second do
    max([second | tail])
  end

  def map([], _fun), do: []

  def map([head | tail], fun) do
    [fun.(head) | map(tail, fun)]
  end

  def mult([]), do: 1

  def mult([head | tail]) do
    head * mult(tail)
  end
end

# ListUtils.max([12, 3, 4, 56_712_324_687, 32546]) |> IO.inspect()
ListUtils.alt_max([12, 3, 4, 56_712_324_687, 32546]) |> IO.inspect()

# => 6
# ListUtils.mult([1]) |> IO.puts()
# ListUtils.map([1, 2, 3], &(&1 * 3)) |> IO.inspect()
