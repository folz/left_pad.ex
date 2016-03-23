defmodule LeftPadTest do
  use ExUnit.Case
  doctest LeftPad

  test "no padding should occur" do
    assert LeftPad.left_pad("foo") == "foo"
    assert LeftPad.left_pad("foo", 0) == "foo"
    assert LeftPad.left_pad("foo", 3) == "foo"
    assert LeftPad.left_pad("foo", 0, "bark") == "foo"
    assert LeftPad.left_pad("foo", 3, "bark") == "foo"
  end

  test "pad a string to the left" do
    assert LeftPad.left_pad("foo", 5) == "  foo"
    assert LeftPad.left_pad("foo", 6, "-") == "---foo"
    assert LeftPad.left_pad("foo", 6, ".-") == ".-.foo"
    assert LeftPad.left_pad("foo", 10, "._.") == "._.._..foo"
  end

  test "weird graphemes are padded correctly" do
    assert LeftPad.left_pad("foo", 5, "❤️") == "❤️❤️foo"
    assert LeftPad.left_pad("ana", 6, "mañ") == "mañana"
    assert LeftPad.left_pad("🌑", 5, "new ") == "new 🌑"
    assert LeftPad.left_pad("fall", 8, "🌑") == "🌑🌑🌑🌑fall"
  end
end
