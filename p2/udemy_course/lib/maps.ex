defmodule DemoMaps do
  def pattern_matching do
    %{title: my_title} = map()
    my_title
  end

  def update do
    new_map = %{map() | title: 'other Film', year: 2021}
    new_map
  end

  def merge do
    map() |> Map.merge(%{some: 'data'})
  end

  def keys do
    map() |> Map.keys()
  end

  def has_key do
    map() |> Map.has_key?(:year)
  end

  def get do
    Map.get(map(), :title)
  end

  def map do
    %{title: "Titanic", year: 1997}
  end
end
