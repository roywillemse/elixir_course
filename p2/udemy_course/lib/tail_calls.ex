defmodule Calc do
  def fact(a), do: do_fact(1, a)

  defp do_fact(result, 0), do: result

  defp do_fact(result, a) do
    (result * a) |> do_fact(a - 1)
  end
end

Calc.fact(1000) |> IO.inspect()

defmodule ListUtils do
  def alt_mult(list), do: do_alt_mult([1 | list])

  defp do_alt_mult([[current_value | []]]), do: current_value

  defp do_alt_mult([current_val, head | tail]) do
    do_alt_mult([current_val * head | tail])
  end

  def mult(list), do: do_mult(1, list)

  defp do_mult(current_value, []), do: current_value

  defp do_mult(current_value, [head | tail]) do
    do_mult(current_value * head, tail)
  end
end

# ListUtils.mult([1, 2, 3, 4, 5]) |> IO.inspect()
