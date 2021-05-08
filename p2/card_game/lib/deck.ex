defmodule Deck do
  defp create_deck do
    values = [
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

    suits = ["S", "C", "H", "D"]

    # // Enum.zip misschien alternatief voor dubbele for

    # nadenken over betere manier om dit op te slaan, miss map met losse suit en value
    for suit <- suits, value <- values do
      "#{value}#{suit}"
    end
  end

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
