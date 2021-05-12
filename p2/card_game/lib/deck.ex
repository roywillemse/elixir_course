defmodule Deck do
  def values do
    [
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "J",
      "Q",
      "K",
      "A"
    ]
  end

  defp create_deck do
    suits = ["S", "C", "H", "D"]
    my_values

    for suit <- suits, value <- values() do
      %{value: value, suit: suit}
    end
  end

  def print_pretty(deck) do
    Enum.map(deck, fn card -> "#{card.value}#{card.suit}" end)
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def deal_multiple(deck, hand_size, amount_players) do
    result =
      Enum.map(
        1..amount_players,
        fn _ ->
          deck
          |> deal(hand_size)
        end
      )

    IO.inspect(result)
  end

  def shuffled_deck() do
    create_deck()
    |> shuffle()
  end
end
