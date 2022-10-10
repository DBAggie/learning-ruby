# Methods seem to be the same as Functions in Javascript
# Define and add your code in

def returnString
    puts "This is a string"
end


# Is the number evenly divisible by 3
def div_by_3?(number)
    if((number.to_i % 3) == 0)
        return true
    else
        return false
    end
end

# Defining a main function to run our code from
def main()
    returnString()
    print "Please enter a number: "
    my_num = gets.chomp
    puts "Is your number divisible by 3? #{div_by_3?(my_num)}"
end

main() # <== Because we declared this it allows us to run the code in the main() method