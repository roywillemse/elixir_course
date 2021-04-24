defmodule Comp do
  require Integer

  def format_data(data) do
    for {name, age} <- data, into: Map.new(), do: {format_name(name), age}
  end

  defp format_name(name) do
    name |> String.downcase() |> String.to_atom()
  end

  def demo(list) do
    for el when el < 10 <- list, Integer.is_even(el), do: el * 2
    # list |> Enum.map( &(&1 * 2))
    # list |> Stream.filter(&Integer.is_even/1) |> Enum.map(&(&1 * 2))
  end

  def demo2(list1, list2) do
    for el1 <- list1, el2 <- list2, Integer.is_even(el1), Integer.is_odd(el2), do: el1 * el2
  end

  def decipher(ciphered_str) do
    for <<char <- ciphered_str>>, do: char - 1
  end
end

data = %{"Joe" => 50, "Bill" => 25, "Alice" => 23}
Comp.format_data(data) |> IO.inspect()

# Comp.decipher("fmjyjs") |> IO.inspect()
# Comp.demo2([1, 3, 4, 65, 8, 43467, 8787, 4313, 32, 1, 9], [
#   124_525_523_532,
#   5,
#   52_532_235_532,
#   35,
#   325_235_253
# ])
# |> IO.inspect()
