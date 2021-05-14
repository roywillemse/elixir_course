defmodule Deck do
  @suits ["S", "C", "H", "D"]

  @values %{
    "2" => 0,
    "3" => 1,
    "4" => 2,
    "5" => 3,
    "6" => 4,
    "7" => 5,
    "8" => 6,
    "9" => 7,
    "10" => 8,
    "J" => 9,
    "Q" => 10,
    "K" => 11,
    "A" => 12
  }

  # Pretty print as name key so value can always stay an INT
  defp create_deck() do
    deck =
      Enum.map(@values, fn {value, index} ->
        for suit <- @suits do
          %Card{
            value_index: index,
            value: value,
            suit: suit,
            label: Card.print_pretty(value, suit)
          }
        end
      end)

    List.flatten(deck)
  end

  @doc """
    Write documentation for all public functions. Lookup convention: https://hexdocs.pm/elixir/master/writing-documentation.html
  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def shuffled_deck() do
    create_deck()
    |> shuffle()
  end
end
