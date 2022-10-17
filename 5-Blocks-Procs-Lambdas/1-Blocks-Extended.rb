# Blocks are just nameless methods

# do..end
arr_1 = [1, 2, 3, 4, 5]
arr_1.each do |x|
    print "#{x} "
end

arr_2 = [6, 7, 8, 9, 10]
arr_2.each { |x| print "#{x} "}
puts ""

arr_3 = [11, 12, 13, 14, 15]
db_arr = arr_3.collect { |x| x * 2 }
print db_arr

puts ""

# Codecademy example of yielding
# Essentially, you can stop code execution in a method in favor of running the block
def yield_name(name) # <== Method
  puts "In the method! Let's yield."
  yield("Kim") # <== Yield to Block below
  puts "In between the yields!"
  yield(name) # <== Yield to Block below
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." } # <== Block that is Yielded to