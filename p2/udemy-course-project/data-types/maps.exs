value = %{ "language" => "Elixir", "platform" => "Eduonix"}
value = %{ language: "Elixir", platform: "Eduonix"}
IO.puts value[:language]
IO.puts value.platform
IO.inspect value[:non_existant]
#IO.inspect value.non_existant
new_value = %{ value | language: "Erlang" }
IO.inspect new_value