defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    word_array =
      sentence
      |> replace_sentence()
      |> String.downcase()
      |> String.split()

    Enum.reduce(word_array, %{}, fn word, acc ->
      new_value =
        case Map.fetch(acc, word) do
          {:ok, current_value} -> current_value + 1
          :error -> 1
        end

      Map.put(acc, word, new_value)
    end)
  end

  defp replace_sentence(string) do
    string
    |> String.replace(~r/[:!&@$%^,]/, "")
    |> String.replace(~r/_/, " ")
    |> String.replace(~r/  /, " ")
  end
end
