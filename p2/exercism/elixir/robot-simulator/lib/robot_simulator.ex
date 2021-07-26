defmodule RobotSimulator do
  @directions [:north, :east, :south, :west]

  defguard valid_position(position)
           when is_tuple(position) and tuple_size(position) == 2 and is_integer(elem(position, 0)) and
                  is_integer(elem(position, 1))

  @doc """
  Create a Robot Simulator given an initial direction and position.

  Valid directions are: `:north`, `:east`, `:south`, `:west`
  """
  @spec create(direction :: atom, position :: {integer, integer}) :: any
  def create(direction \\ :north, position \\ {0, 0})

  def create(direction, _) when not (direction in @directions) do
    {:error, "invalid direction"}
  end

  def create(_, position) when not valid_position(position) do
    {:error, "invalid position"}
  end

  def create(direction, {_, _} = position) do
    {direction, position}
  end

  @doc """
  Simulate the robot's movement given a string of instructions.

  Valid instructions are: "R" (turn right), "L", (turn left), and "A" (advance)
  """
  @spec simulate(robot :: any, instructions :: String.t()) :: any
  def simulate(robot, instructions) do
    String.graphemes(instructions)
  end

  @doc """
  Return the robot's direction.

  Valid directions are: `:north`, `:east`, `:south`, `:west`
  """
  @spec direction(robot :: any) :: atom
  def direction({direction, _}) do
    direction
  end

  @doc """
  Return the robot's position.
  """
  @spec position(robot :: any) :: {integer, integer}
  def position({_, position}) do
    position
  end
end
