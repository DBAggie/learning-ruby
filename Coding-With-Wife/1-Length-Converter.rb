# convert inches to centimeters

print "
1 = Inches to Centimeters
2 = Centimeters to Inches
Enter your conversion: "
measurement = gets.chomp
puts ""
print "Enter a number: "
number = gets.chomp

case measurement.to_i
    when 1
        centi = number.to_f * 2.54
        puts "In Centimeters that is: #{centi}"
    when 2
        inches = number.to_f / 2.54
        puts "In Inches that is: #{inches}"
    else
        puts "That is an invalid input"
    end
