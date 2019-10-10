defmodule ExSlackLoggerTest do
  use ExUnit.Case
  doctest ExSlackLogger

  test "greets the world" do
    assert ExSlackLogger.hello() == :world
  end
end
