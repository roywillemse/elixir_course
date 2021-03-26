salt = "random"

# mad_printer = &(
mad_printer = fn
  "" ->
    IO.puts("__NOVAL__")

  intitial_string ->
    (intitial_string <> salt)
    |> String.reverse()
    |> IO.puts()
end

# )

salt = "NEW VALUE HERE"

# Enum.each(["hello", "there", "friend"], &IO.puts/1)
Enum.each(["hello", "there", "", "friend"], mad_printer)
# mad_printer.("Hello there friend!")
