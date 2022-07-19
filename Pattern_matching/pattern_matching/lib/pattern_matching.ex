defmodule PatternMatching do
  def hello do
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
  def success_response do get_msg({:ok, "Repository was created!"}) end
  def error_response do get_msg({:error, "Problem creating the repository."}) end

  defp get_msg(response) do
    case response do
      {:ok, msg} ->
        "Success: #{msg}"
      {:error, msg} ->
        "Error: #{msg}"
    end
  end

  def recursive([]) do [] end
  def recursive([head | tail]) do
    [head * head] ++ recursive(tail)
  end
  def recursive([head | tail]) do
    [head] ++ recursive(tail)
  end

  def fizzbuzz([]) do [] end
  def fizzbuzz([head | tail]) do
    [fizzbuzz(head)] ++ fizzbuzz(tail)
  end
  def fizzbuzz(number) do
    cond do
     rem(number, 3) == 0 and rem(number, 5) == 0 -> "FizzBuzz"
     rem(number, 3) == 0 -> "Fizz"
     rem(number, 5) == 0 -> "Buzz"
     true -> number
    end
  end

  # replacing any number divisible by three with the word "fizz", and any number divisible by five with the word "buzz"
  # number / 3 = "fizz"
  # number / 5 = "buzz"
end

# > person = %{name: "bill", age: 25}
# %{age: 25, name: "bill"}
# > %{name: name, age: age} = person
# %{age: 25, name: "bill"}
# > age
# 25
# > name
# "bill"

# > data = {:ok, "Success"}
# {:ok, "Success"}
# > {:ok, msg} = data
# {:ok, "success"}
# > msg
# "success"
