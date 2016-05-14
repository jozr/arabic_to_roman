defmodule ArabicToRoman do
  @library [
    m: 1000,
    d: 500,
    c: 100,
    l: 50,
    x: 10,
    v: 5,
    i: 1
  ]
  # maps aren't ordered. gah!

  def arabic_to_roman(num) do
    arabic_to_roman(num, "")
  end

  defp arabic_to_roman(0, roman_numeral) do
    replace_exceptions(roman_numeral)
  end

  defp arabic_to_roman(num, roman_numeral) do
    {roman_atom, arabic} = Enum.find(@library,
      fn ({roman_atom, arabic}) ->
        num >= arabic
      end
    )

    arabic_to_roman(
      num - arabic,
      roman_numeral <> to_upcase_string(roman_atom)
    )
  end

  defp replace_exceptions(string) do
    String.replace(string, "DCCCC", "CM")
    |> String.replace("CCCC", "CD")
    |> String.replace("LXXXX", "XC")
    |> String.replace("XXXX", "XL")
    |> String.replace("VIIII", "IX")
    |> String.replace("IIII", "IV")
  end

  defp to_upcase_string(atom) do
    Atom.to_string(atom)
    |> String.upcase
  end
end
