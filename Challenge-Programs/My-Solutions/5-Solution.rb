# Create a program that takes in an input and then sorts it
# Hella bug in this right now.


def sorter
    print "Enter either a string or numbers separated by a space: "
    user_input = gets.chomp
    
    i_arr = user_input.split(" ")
    
    print i_arr.sort!
end

sorter()