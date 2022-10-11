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
female_superheros.each { |key, value| puts key.to_s.capitalize} # <== This can be altered to clean up the output