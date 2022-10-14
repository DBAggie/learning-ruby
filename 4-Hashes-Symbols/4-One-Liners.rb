# One Liner Mania
system("cls")

variable = true

puts "This is a one liner!" if variable == true

puts "Here I am again" unless false # <== toggle this to true to see the output
puts 1 < 3 ? "and again" : "How do we get this to print?" # <== can you figure it out?

# Puts only even values. Can you make it do odd values?
puts ""
puts "Even only"
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each { |value| print "#{value}, " if value % 2 == 0}

puts ""
puts ""
# .upto & downto
puts ".upto"
"L".upto("P") { |letter| print "#{letter.upcase} "}
puts ""
puts "----"
5.upto(10) { |num| puts num}

puts ""
puts ".downto"
20.downto(16) { |num| puts num}