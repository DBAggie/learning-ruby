# Make a calculator

def calculator
    print "Enter two numbers EX=> (10 5): "
    numbers = gets.chomp
    num_array = numbers.split(" ")
    puts ""
    print "What calculation would you like to make?
    1 - Add
    2 - Subtract
    3 - Divide
    4 - Multiply
    5 - Remainder
    6 - Exponential
    Enter a number: "
    calculation = gets.chomp

    case calculation.to_i
        when 1
            puts num_array[0].to_i + num_array[1].to_i
        when 2
            puts num_array[0].to_i - num_array[1].to_i
        when 3
            puts ""
            print "What order?
            1 - Num 1 / Num 2
            2 - Num 2 / Num 1
            Enter an option: "
            order = gets.chomp
            case order.to_i
                when 1
                    puts num_array[0].to_i / num_array[1].to_i
                when 2
                    puts num_array[1].to_i / num_array[0].to_i
                else
                    puts "Invalid Option"
            end
        when 4
            puts num_array[0].to_i * num_array[1].to_i
        when 5
            puts num_array[0].to_i % num_array[1].to_i
        when 6
            puts num_array[0].to_i ** num_array[1].to_i
        else
            puts "Invalid Option Detected"
    end
    puts ""
    print "Would you like to run another calculation?
    (Y/N): "
    again = gets.chomp
    return if again.downcase == "n"
    system("cls")
    calculator()
end

calculator()