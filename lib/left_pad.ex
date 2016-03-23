defmodule LeftPad do
  @moduledoc """
  Pad a string to the left with any number of characters.
  """

  @spec left_pad(String.t) :: String.t
  def left_pad(str) when is_binary(str) do
    str
  end

  @spec left_pad(String.t, non_neg_integer) :: String.t
  def left_pad(str, amt) when is_binary(str) and is_integer(amt) and amt >= 0 do
    left_pad(str, amt, " ")
  end

  @spec left_pad(String.t, non_neg_integer, String.t) :: String.t
  def left_pad(str, 0, _pad) when is_binary(str), do: str
  def left_pad(str, amt, pad) when is_binary(str) and is_integer(amt) and amt >= 0 and is_binary(pad) do
    len = String.length(str)

    if len >= amt do
      str
    else
      fill = String.graphemes(pad) |> Stream.cycle() |> Stream.take(amt - len) |> Enum.join
      fill <> str
    end
  end
end
