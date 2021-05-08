defmodule Poker do
  def play do
    deck = Deck.shuffled_deck()

    # Deck.deal meerdere spelers kunnen meegeven zodat deck niet steeds geupdate moet worden;
    {playerWhite, updated_deck} = Deck.deal(deck, 5)
    {player_black, deck} = Deck.deal(deck, 5)

    IO.inspect(playerWhite)
    IO.inspect(player_black)
  end
end

Poker.play()
