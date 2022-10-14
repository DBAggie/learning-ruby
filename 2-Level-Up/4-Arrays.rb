# All about arrays
system("cls")

num_arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
string_arr = ["This", "is", "a", "list", "of", "strings", "."]

num_arr.each do | x |
    x *= 2
    puts "The adjusted number is: #{x}"
end

puts ""

# Random method time
# There is a method called .times
# That will repeat your specified object by the number of times specified
# Why would you want to use this? I don't know..I guess to repeat stuff
2.times { print "#{string_arr}" }
3.times { puts "\n Repeat this string" }
puts ""

# Multi-Dimensional Array
#Array data structure [Name, Position, salary]
my_2d_array = [["Jeff", "Accountant", 70000], ["Paul", "IT", 90000], ["Laura", "CTO", 100000]]

puts "My name is #{my_2d_array[0][0]} and I am an #{my_2d_array[0][1]}"
puts ""
my_2d_array.each do |employee|
    puts "Our #{employee[1]} staff consists of #{employee[0]} whose salary is #{employee[2]}"
end