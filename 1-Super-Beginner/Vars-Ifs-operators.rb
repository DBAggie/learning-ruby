#Lesson 1
=begin
    We learned about comments and shit
    We also learned about variables and types
    There isn't a declaration of types

    i.e.
    var int my_num = 0; (Yes I know this isn't real code)

    Where 'int' represents the type of Integer
    ------------------------------------------
    It's the whole "EVERYTHING IS AN OBJECT"
      You get an Object, and you get an Object, EVERBODY GETS AN OBJECT!
=end

puts "This worked"
print "This also worked"
=begin
  As far as I can tell
  The best time to use Print over Puts
  is when you don't want a new line after the string

  For user input you want

  Enter a Number: |  <== You want the cursor to be here
                  |  <== Not here
  Which is why you would use print in this case

  whereas puts creates a new line after the printed string

  If there is anything I am missing here let me know
=end

#User name manipulation
print "Get a username: "
username = gets.chomp
puts "The username is #{username.upcase}"
puts "Username again without upcase: #{username}"
# Take note that the ! symbol modifies the variable in place. Otherwise, Ruby creates a copy.
puts "This worked because we didn't use ! to set the changes"
username.downcase!
username.capitalize!
puts "The updated username is: #{username}"

#Playing around with if else logic
my_name = "Justin Harris"

if my_name.length < 10
  print "Your name is less than 10 characters"
elsif my_name.length < 15 # <== Remember that it's not elseif it's elsif 
  print "Your name is less than 15 characters"
elsif my_name.length < 20
  print "Your name is less than 20 characters"
else 
  print "Your name is greater than 20 characters"
end

#Playing around with unless
is_active = false # <== Toggle this between true and false to see the behavior

print "It's not active " unless is_active

unless !is_active
  print "It's active"
end