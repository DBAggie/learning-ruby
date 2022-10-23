# Procs and Symbols in action

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

string_array = my_array.collect(&:to_s)

print string_array
puts ""
puts ""

# More Examples of Procs and Symbols in action
print "Enter your name: "
u_input = gets.chomp

downcase_array = u_input.split(//).collect(&:downcase)
print downcase_array

upcase_proc = Proc.new { |x| x.upcase }
downcase_array.map!(&upcase_proc)

print downcase_array