defmodule Poker do
  @player_names ["Player White", "Player Black"]
  @deck Deck.shuffled_deck()

  def play() do
    {players, _} =
      Enum.reduce(@player_names, {[], @deck}, fn name, {players, used_deck} ->
        {cards, updated_deck} = Deck.deal(used_deck, 5)
        player = %Player{name: name, cards: cards}
        {[player | players], updated_deck}
      end)

    rankings =
      Enum.map(players, fn player ->
        ranking(player)
      end)

    IO.inspect(rankings, label: "Ranking")
  end

  @spec ranking(%Player{}) :: %Player{}
  def ranking(player) do
    player
    |> high_card()
  end

  @spec high_card(%Player{}) :: %Player{}
  def high_card(player) when is_nil(player.output.value) do
    highest_card = Enum.max_by(player.cards, fn card -> card.value_index end)

    Map.put(player, :output, %{
      label: "high card: #{highest_card.value}",
      value: highest_card.value_index
    })
  end

  def high_card(player), do: player

  def occurences(player) when is_nil(player.output.value) do
    # Not yet implemented
  end

  def occurences(player), do: player
end

Poker.play()
