defmodule HongdaeSchoolcafe.StringModifier do
  
  def place_to_eat(place) do
    case place do
      0 ->
	"학생회관식당"
      1 ->
	"남문관식당(제2식당)"
      2 ->
	"교직원식당"
      _ ->
	"제2기숙사 식당"
    end
  end
  
end
