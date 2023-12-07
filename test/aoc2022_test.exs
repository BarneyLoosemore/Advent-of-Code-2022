defmodule Aoc2022Test do
  use ExUnit.Case

  describe "Day 25" do
    test "converts from snafu to normal" do
      assert Day25.snafu_to_normal("2=-01") === 976
      assert Day25.snafu_to_normal("1=-0-2") === 1747
      assert Day25.snafu_to_normal("12111") === 906
      assert Day25.snafu_to_normal("2=0=") === 198
      assert Day25.snafu_to_normal("21") === 11
      assert Day25.snafu_to_normal("2=01") === 201
      assert Day25.snafu_to_normal("111") === 31
      assert Day25.snafu_to_normal("20012") === 1257
      assert Day25.snafu_to_normal("112") === 32
      assert Day25.snafu_to_normal("1=-1=") === 353
      assert Day25.snafu_to_normal("1-12") === 107
      assert Day25.snafu_to_normal("12") === 7
      assert Day25.snafu_to_normal("1=") === 3
      assert Day25.snafu_to_normal("122") === 37
      assert Day25.snafu_to_normal("200") === 50
    end

    test "converts normal to snafu" do
      assert Day25.normal_to_snafu(976) === "2=-01"
      assert Day25.normal_to_snafu(50) === "200"
    end

    test "returns correct output" do
      input = Input.read!(25, :sample)
      assert Day25.pt1(input) === "2=-1=0"
    end
  end
end
