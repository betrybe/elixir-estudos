defmodule PatternMatching do

  def main do
    :world
  end

  def foo(%{name: "katia"}) do
    IO.inspect("Fala, Katia")
  end

  def foo(%{name: name}) do
    IO.inspect("ola, #{name}")
  end
  #Como fazer um pattern matching de strings. exemplos:
  # assert "user 3 not found" = "user #{n} not found"
end
