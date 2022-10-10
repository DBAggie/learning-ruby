# All about Blocks
# Blocks are just nameless Methods
#
# They can be defined with either
#   do
#       Code Here
#   end
# or
#   {
#     Code Here
#   }

# do method
1.times do
    puts "I'm a code block!"
end

# Curly Brace method
1.times { puts "As am I!" }

# Another example
[1, 2, 3, 4, 5].each { |i| puts 5*i }

# Random Method Sort
my_array = [5, 15, 3, 100, 42, 20, 13]
puts my_array.sort!