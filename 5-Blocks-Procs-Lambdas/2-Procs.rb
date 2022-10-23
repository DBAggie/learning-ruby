# All about procs
# So, you can't assign a block to a variable
# { |x| puts "My name is #{x}" } <== This whole thing is a block
# Procs apparently allow this

#Assign a Block to a variable using a Proc
double_value = Proc.new { |x| print x * 2 }
[1, 2, 3, 4].map(&double_value)

puts ""

# Another example
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new { |x| x.floor }

ints = floats.collect(&round_down)
print ints

puts ""

# Calling Procs via .call
say_hello = Proc.new {puts "Hello there!"}
say_hello.call


