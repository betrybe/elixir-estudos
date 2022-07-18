defmodule PatternMatchingTest do
  use ExUnit.Case
  doctest PatternMatching

  test "greets the world" do
    assert PatternMatching.hello() == :world
  end

  test "fizzbuzz challenge" do
    assert PatternMatching.fizzbuzz(1) == 1
    assert PatternMatching.fizzbuzz(2) == 2
    assert PatternMatching.fizzbuzz(3) == "Fizz"
    assert PatternMatching.fizzbuzz(5) == "Buzz"
    assert PatternMatching.fizzbuzz(15) == "FizzBuzz"
    assert PatternMatching.fizzbuzz([1, 3, 5, 7, 15, 17]) == [1, "Fizz", "Buzz", 7, "FizzBuzz", 17]
  end
end
