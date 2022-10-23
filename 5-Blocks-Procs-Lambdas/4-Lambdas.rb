# Learning about Lambdas
# They are basically Procs
# They are a way to create a block and assign it to a variable
# Lambdas are able to throw an error when the wrong number of arguments are passed
# Lambdas are also able to return a value and passes the control back to the calling method

# This is a lambda
def dumb_example(a_lambda)
    puts "This was a Codecademy example"
    a_lambda.call

end

dumb_example(lambda { puts "I don't understand why I would use this yet"})

# Codecadey example of a lambda Vs. Proc
def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda