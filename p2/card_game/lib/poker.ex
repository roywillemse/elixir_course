defmodule Poker do
  def play do
    deck = Deck.shuffled_deck()
    {player_white, deck} = Deck.deal(deck, 5)
    {player_black, deck} = Deck.deal(deck, 5)

    IO.inspect(player_white, label: "All cards")
    ranking(player_white)
  end

  def ranking(cards) do
    cards
    |> occurences()
    |> high_card()
  end

  def high_card(cards) do
    card_index =
      Enum.reduce(cards, 0, fn card, acc ->
        current_index = Enum.find_index(Deck.values(), fn value -> value == card.value end)

        if(current_index > acc) do
          current_index
        else
          acc
        end
      end)

    highest_card = Enum.fetch!(Deck.values(), card_index)
    IO.inspect(highest_card, label: "high card")
    highest_card
  end

  def occurences(cards) do
    values = Enum.map(cards, fn card -> card.value end)

    amount_occ =
      Enum.reduce(values, %{}, fn value, acc -> Map.update(acc, value, 1, &(&1 + 1)) end)

    cards
  end
end

Poker.play()
