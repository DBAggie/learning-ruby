puts "This worked"

#Lesson 1
=begin
    We learned about comments and shit
    We also learned about variables and types
=end

print "Get a username: "
username = gets.chomp

puts "The username is #{username.upcase}"
puts "Username again without upcase: #{username}"
puts "This worked because we didn't use ! to set the changes"


username.downcase!
username.capitalize!
puts "The updated username is: #{username}"

my_name = "Justin Harris"

if my_name.length < 10
  print "Your name is less than 10 characters"
elsif my_name.length < 15
  print "Your name is less than 15 characters"
elsif my_name.length < 20
  print "Your name is less than 20 characters"
else 
  print "Your name is greater than 20 characters"
end

is_active = false

print "It's not active " unless is_active

unless !is_active
  print "It's active"
end