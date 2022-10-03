print "Please Enter a number: "
num_a = gets.chomp.to_i
print "Please Enter a second number: "
num_b = gets.chomp.to_i
print "Please Enter either [add, subtract, multiply, or divide]: "
calculation_type = gets.chomp

if calculation_type.downcase == "add"
    puts num_a + num_b
elsif calculation_type.downcase == "subtract"
    if num_a > num_b
        puts num_a - num_b
    else
        puts num_b - num_a
    end
elsif calculation_type.downcase == "multiply"
    puts num_a * num_b
elsif calculation_type == "divide"
    print "Choose your order (1 or 2) [a/b or b/a]: "
    division_order = gets.chomp.to_i
    if division_order == 1
        puts num_a / num_b
    elsif division_order == 2
        puts num_b / num_a
    else
        print "Invalid Selection"
    end
else
    puts "That is an invalid option"
end
