#Each loop counts from 0 to 10

# It's a while loop
# There isn't much to say about it
# Don't create an infinite loop and you're fine
while_counter = 0
while while_counter < 11
    puts "While Counter is: #{while_counter}"
    while_counter += 1 # <== Remember you can do this with any operator
                       # <== += | -= | *= | /= |
end

puts ""
# This one is interesting
# It's a while loop in reverse
# Well kinda
# Just different way to think about it
# I have no idea why I would use this over a while loop
until_counter = 0
until until_counter > 10 # <== This is fun
    puts "Until Counter is: #{until_counter}"
    until_counter += 1
end