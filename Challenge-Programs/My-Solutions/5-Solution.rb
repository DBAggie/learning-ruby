# Create a program that takes in an input and then sorts it
# Hella bug in this right now.
# If you can find the bug try to fix it!
system("cls")

def sorter
    print "Enter either a string or numbers separated by a space: "
    user_input = gets.chomp
    
    i_arr = user_input.split(" ")
    
    print i_arr.sort!
end

sorter()