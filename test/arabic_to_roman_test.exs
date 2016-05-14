defmodule ArabicToRomanTest do
  use ExUnit.Case

  test "1 to I" do
    assert ArabicToRoman.arabic_to_roman(1) == "I"
  end

  test "2 to II" do
    assert ArabicToRoman.arabic_to_roman(2) == "II"
  end

  test "4 to IV" do
    assert ArabicToRoman.arabic_to_roman(4) == "IV"
  end

  test "5 to V" do
    assert ArabicToRoman.arabic_to_roman(5) == "V"
  end

  test "10 to X" do
    assert ArabicToRoman.arabic_to_roman(10) == "X"
  end

  test "18 to XVIII" do
    assert ArabicToRoman.arabic_to_roman(18) == "XVIII"
  end

  test "239 to CCXXXIX" do
    assert ArabicToRoman.arabic_to_roman(239) == "CCXXXIX"
  end

  test "1034 to MXXXIV" do
    assert ArabicToRoman.arabic_to_roman(1034) == "MXXXIV"
  end
end
