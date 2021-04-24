defmodule Poker do
  def play do
    deck = Deck.shuffled_deck()
    player_white = Deck.deal(deck, 5)
    player_black = Deck.deal(deck, 5)

    IO.inspect(player_white)
  end
end

Poker.play()
