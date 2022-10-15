# Create a program that accepts a string
# Prompts the user to select how they want to manipulate it
# Output the manipulated string
# Use any or all of the following:
# .downcase, .upcase, .capitalize, .reverse, .swapcase, .slice, .squeeze
# Actually, just go to this link. It has everything: https://ruby-doc.org/core-3.1.2/String.html

# Your code goes below:
system("cls")
def string_manipulator
    print "Enter a string: "
    my_string = gets.chomp
    puts ""
    print "Options:
    1 - Lowercase
    2 - Uppercase
    3 - Reverse
    4 - Swap Case
    5 - Hexidecimal
    How would you like to manipulate your string? "
    my_option = gets.chomp.to_i

    if my_option.is_a? Integer
        case my_option
            when 1
                puts my_string.downcase
            when 2
                puts my_string.upcase
            when 3
                puts my_string.reverse
            when 4
                puts my_string.swapcase
            when 5
                string_list = my_string.split(" ")
                string_list.each { |word|
                    current_word = word.chars
                    current_word.each { |letter| print "#{letter.bytes[0]}(#{letter}) "}}
            else
                puts "That is an invalid option"
        end
    end

    print "\nWould you like to do it again? (Y/N): "
    run_again = gets.chomp
    return if run_again.downcase == 'n'
    string_manipulator()
end
string_manipulator()