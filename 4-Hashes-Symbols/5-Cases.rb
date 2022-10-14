# Cases
# Add more to this file. You can also take a stab at asking the user to add a superhero
superheros = {
    :batman => "I am Batman!",
    :superman => "Faster than a speeding bullet!",
    :deadpool => "Something involving breaking the 4th wall"
}

print "Enter a Superhero: "
hero_input = gets.chomp
hero_input.downcase!
case hero_input
    when "batman"
        puts "Batman is known by the phrase: #{superheros[hero_input.to_sym]}"
    when "superman"
        puts "Superman is known by the phrase: #{superheros[hero_input.to_sym]}"
    when "deadpool"
        puts "Deadpool is known by the phrase: #{superheros[hero_input.to_sym]}"
    else
        puts "I don't know that superhero"
end