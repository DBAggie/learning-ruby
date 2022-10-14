superhero_genders = {
    batman: "Male",
    superman: "Male",
    wonder_woman: "Female",
    hulk: "Male",
    jarvis: "N/A",
    black_widow: "Female",
    captain_marvel: "Female"
}

# Select something specific
female_superheros = superhero_genders.select { |key, value| value == "Female" }
puts "Iterate by each record"
female_superheros.each { |key, value| puts key.to_s.capitalize} # <== This can be altered to clean up the output

puts ""
# .each_key or .each_value
puts "Iterate by Key"
female_superheros.each_key { |key| puts key.to_s.sub("_", " ").capitalize} #.sub() allows you to substitue something for something else
puts ""
puts "Iterate by Value"
female_superheros.each_value { |value| puts value.capitalize}