defmodule RomanNumerals do
  @mapping [
    {"M", 1000},
    {"CM", 900},
    {"D", 500},
    {"CD", 400},
    {"C", 100},
    {"XC", 90},
    {"L", 50},
    {"XL", 40},
    {"X", 10},
    {"IX", 9},
    {"V", 5},
    {"IV", 4},
    {"I", 1}
  ]

  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number, roman_numerals \\ "")
  def numeral(0, roman_numerals), do: roman_numerals

  def numeral(number, roman_numerals) do
    {roman, value} =
      Enum.find(@mapping, fn {_, value} ->
        number >= value
      end)

    numeral(number - value, roman_numerals <> roman)
  end
end
