defmodule Day25 do
  @snafu_digits ~w". . . = -"
  def snafu_to_normal(snafu) do
    snafu
    |> String.split("", trim: true)
    |> Enum.reverse()
    |> Enum.with_index()
    |> Enum.map(fn
      {"0", _} -> 0
      {"-", idx} -> -1 * Integer.pow(5, idx)
      {"=", idx} -> -2 * Integer.pow(5, idx)
      {num, idx} -> String.to_integer(num) * Integer.pow(5, idx)
    end)
    |> Enum.sum()
  end

  def normal_to_snafu(_, snafu \\ [])

  def normal_to_snafu(0, snafu), do: snafu |> Enum.join()

  def normal_to_snafu(decimal, snafu) do
    rem = rem(decimal, 5)
    quotient = floor(decimal / 5)

    if rem <= 2,
      do: normal_to_snafu(quotient, [rem | snafu]),
      else: normal_to_snafu(quotient + 1, [Enum.at(@snafu_digits, rem) | snafu])
  end

  def pt1(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&snafu_to_normal/1)
    |> Enum.sum()
    |> normal_to_snafu()
  end
end
