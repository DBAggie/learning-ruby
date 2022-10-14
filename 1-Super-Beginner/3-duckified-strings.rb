# This is one of the lessons from Codecademy
# I felt it deserved a file to explain a few things I encountered
system("cls")

print "Please enter a string: "
user_input = gets.chomp #<== This was 
user_input.downcase!    #<== annoying

=begin
    Let me explain

    You are suppose to be able to do inline methods

        i.e.: user_input = gets.chomp.downcase! <== Notice that we have downcase here
    This works
    Kinda

    If you print out the results of the above code in i.e. you get this
        Input = This is a string
        Output: "This is a string"

        Input = notta clue
        Output: {null}

    WHY!!
    Just because there are no uppercase letters it just returns nothing
    F'ing why

    Because if you do this
        user_input = gets.chomp
        user_input.downcase!

    You will get the correct output everytime

    My best guess at understanding is when you do it inline it expects to do it's job
        If it doesn't have anything to do it returns nothing
        OR I am wrong and it's just dumb
    
    If you can't guarantee that your method will be needed don't do it inline
=end

if user_input.include? "s"
  user_input.gsub!(/s/, "th") # <== Remember that gsub just stands for "Global Substitution"
  print "Duckified: #{user_input}"
else 
  puts "There are no 'S's in that string"
end