defmodule RotationalCipher do
  @char_a 97
  @char_z 122
  @char_A 65
  @char_Z 90
  @letters_in_alphabet 26

  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    characters = to_charlist(text)
    shifted_characters = Enum.map(characters, fn char -> rotate_char(char, shift) end)
    List.to_string(shifted_characters)
  end

  defp rotate_char(char, shift) when char >= @char_a and char <= @char_z,
    do: _rotate(char, shift, @char_a, @char_z)

  defp rotate_char(char, shift) when char >= @char_A and char <= @char_Z,
    do: _rotate(char, shift, @char_A, @char_Z)

  defp rotate_char(char, _), do: char

  defp _rotate(char, shift, min, max) do
    correct_shift_amount = Integer.mod(shift, @letters_in_alphabet)
    new_char = char + correct_shift_amount

    if new_char >= max do
      new_char - max + min
    else
      new_char
    end
  end
end
