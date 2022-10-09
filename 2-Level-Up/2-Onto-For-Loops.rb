# For loops will count from 0 to 10

for num in 0...11 # <== This range is not inclusive
    puts "Exclusive Range is: #{num}"
end

puts ""

for num in 0..10 # <== This range is inclusive 
    puts "Inclusive Range is: #{num}"
end

puts ""

# Loops are apparently a thing. I don't understand why we need For, While, and loop
i = 20
puts "The loop is: "
loop do
  i -= 1
  print "#{i}" # <== 3.) Hint: The answer is here somewhere
  break if i <= 0
end

puts "" # <== 2.) You will understand better after you delete this
puts "" # <== 1.) Can you explain why I had to do this for readability in the console? Remove it and see.

puts "The Next Loop is: "
# We also have a next thing? WTF
j = 20
loop do
  j -= 1
  next if i % 2 > 0 # <== Next will only run the code below when it evaluates to true
  print "#{j}"
  break if j <= 0
end

#Just some reminders
k = 0
loop do
  k += 1
  print "Ruby!"
  break if k > 29
end

# Random infinite Loop
# DO NOT USE THIS
# loop puts "Hello World!"