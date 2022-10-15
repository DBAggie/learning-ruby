# Make program that will calculate a fibonacci sequence to 10 digits
# I used these links:
# https://en.wikipedia.org/wiki/Fibonacci_number
# https://www.techtarget.com/whatis/definition/Fibonacci-sequence

num_array = [0, 1]
for i in 1..8 do
    num_array << num_array[i] + num_array[i - 1]
end

print num_array