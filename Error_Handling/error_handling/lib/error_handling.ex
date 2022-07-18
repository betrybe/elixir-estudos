defmodule ErrorHandling do
  def error do raise "Oh no!" end
  def argument_error do raise ArgumentError, message: "the argument value is invalid" end

  def try_rescue do
    try do
      raise "Oh no!"
    rescue
      e in RuntimeError -> IO.puts("An error occurred: " <> e.message)
    end
  end

  def try_rescue_after do
    try do
      raise "Oh no!"
    rescue
      e in RuntimeError -> IO.puts("An error occurred: " <> e.message)
    after
      IO.puts"The end!"
    end
  end
end
