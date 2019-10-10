defmodule SlackLoggerTest do
  use ExUnit.Case
  doctest SlackLogger

  test "greets the world" do
    assert SlackLogger.hello() == :world
  end
end
