defmodule HongdaeSchoolcafe do
  @moduledoc """
  Documentation for HongdaeSchoolcafe.
  """

  alias HongdaeSchoolcafe.{Core, StringModifier}
  
  @doc """
  Hello world.

  ## Examples

      iex> HongdaeSchoolcafe.hello
      :world

  """

  @timetable [0..1, 2..4, 5..6, 7..9]

  defp where_to_eat(index) do
    today_menu = Core.get_today_menu(index)

    @timetable
    |> Enum.map(fn (range) -> Enum.slice(today_menu, range) end)
  end
  
  defp today() do
    :erlang.date()
    |> Date.from_erl
    |> elem(1)
    |> Date.day_of_week
  end

  def run() do
    index = today() - 1
    menus = where_to_eat(index)
  end
end
