# Assignments can be made only if the variable is nil
system("cls")
# ||= Doesn't work here
print "Enter a number: "
num = gets.chomp
puts "Your number is currently: #{num}"
num ||= num + 1
puts "Your number is currently: #{num}"

# ||= Works here
num = nil
num ||=10
puts "Your number is currently: #{num}"

# Why would you use this? I guess as a barrier for reassignment of a variable
# This is cool but I can't imagine this gets used often