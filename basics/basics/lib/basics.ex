defmodule Basics do
  def to_roman(arg) do
    cond do
      arg >= 1000 -> "M" <> to_roman(arg - 1000)
      arg >= 900 -> "CM" <> to_roman(arg - 900)
      arg >= 500 -> "D" <> to_roman(arg - 500)
      arg >= 400 -> "CD" <> to_roman(arg - 400)
      arg >= 100 -> "C" <> to_roman(arg - 100)
      arg >= 90 -> "XC" <> to_roman(arg - 90)
      arg >= 50 -> "L" <> to_roman(arg - 50)
      arg >= 40 -> "XL" <> to_roman(arg - 40)
      arg >= 10 -> "X" <> to_roman(arg - 10)
      arg > 8 -> to_roman(abs(arg - 10)) <> "X"
      arg >= 5 -> "V" <> to_roman(arg - 5)
      arg > 3 -> to_roman(abs(arg - 5)) <> "V"
      arg >= 1 -> "I" <> to_roman(arg - 1)
      arg == 0 -> ""
    end
  end
end
