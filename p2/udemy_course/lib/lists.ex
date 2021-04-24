defmodule Demo do
  def insert do
    List.insert_at(list(), 2, "test")
  end

  def delete do
    List.delete_at(list(), 2)
  end

  def flatten do
    list_of_lists = [list(), [1, 3, 4, 5], [4, 55, 67]]
    List.flatten(list_of_lists)
  end

  def first do
    List.first(list())
  end

  def last do
    List.last(list())
  end

  def list do
    [1, 2, 3, 4, 5, 6]
  end
end

Demo.insert() |> IO.inspect()
