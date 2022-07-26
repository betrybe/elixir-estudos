defmodule BasicsTest do
  use ExUnit.Case
  doctest Basics

  test "base types" do
    base_types = [
      {1000,"M"},
      {900,"CM"},
      {500,"D"},
      {400,"CD"},
      {100,"C"},
      {90,"XC"},
      {50,"L"},
      {40,"XL"},
      {10,"X"},
      {9,"IX"},
      {5,"V"},
      {4,"IV"},
      {1,"I"},
    ]

    Enum.each(base_types, fn{i, s} -> assert Basics.to_roman(i) == s end)
  end

  test "random types" do
    list = [
      {1,"I"},
      {2,"II"},
      {3,"III"},
      {4,"IV"},
      {9,"IX"},
      {11,"XI"},
      {12,"XII"},
      {13,"XIII"},
      {10,"X"},
      {20,"XX"},
      {30,"XXX"},
      {40,"XL"},
      {50,"L"},
      {51,"LI"},
      {89,"LXXXIX"},
      {90,"XC"},
      {100,"C"},
      {399,"CCCXCIX"},
      {400,"CD"},
      {500,"D"},
      {900,"CM"},
      {1000,"M"}
    ]

    Enum.each(list, fn{i, s} -> assert Basics.to_roman(i) == s end)
  end
end
