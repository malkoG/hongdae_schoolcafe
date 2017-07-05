defmodule HongdaeSchoolcafe.Core do

  @weekdays 5

  defp menu_request() do
    HTTPotion.get("http://apps.hongik.ac.kr/food/food.php")
  end

  defp extract_menu() do
    menu_request().body
    |> Floki.find("div.daily-menu > p")
    |> Enum.chunk(@weekdays)
  end

  def get_today_menu(index) do
    extract_menu()
    |> Enum.map(fn (xs) -> Enum.at(xs, index) end)
  end
end
