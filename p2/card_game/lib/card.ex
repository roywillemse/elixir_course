defmodule Card do
  defstruct value_index: nil,
            value: nil,
            suit: nil,
            label: nil

  @doc """
  Prints the Card in a readable notation
  Returns a string with the value and the suit
  """
  def print_pretty(value, suit), do: "#{value}#{suit}"
end
