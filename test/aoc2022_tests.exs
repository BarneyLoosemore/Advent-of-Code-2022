defmodule Aoc2022Test do
  use ExUnit.Case

  test "Day 25" do
    input = Input.read!(25, :sample)

    assert Day25.pt1(input) === 0
  end
end
