# Remember Hashes are just key value pair objects
#
system("cls")

puts "Define Hash literal"
# Define Literal
a_hash = {
    "Batman" => "Bruce Wayne",
    "Superman" => "Clark Kent"
}
a_hash.each do |key, value|
    puts "#{key} is #{value}"
end

puts "Define Hash Using Method"
# Define using Hash Constructor
# You can define it empty
b_hash = Hash.new()
b_hash["Batman"] = "Bruce Wayne"

# You can define it with default value
c_hash = Hash.new("Bruce Wayne")

puts b_hash["Batman"]
puts c_hash["Batman"]

puts ""

# We have a new tool called Symbols now to use with Hashes
# Before we were declaring keys using strings
# The thing to note is when we check the type of the key it will be a String type
# This is cool and all but can be slow and isn't memory effective
key_string_hash = {
    "string_1" => "",
    "string_2" => ""
}

# Now we can decalre things using Symbols
key_symbol_hash = {
    :string_1 => "",
    :string_2 => ""
}

puts "String Vs. Symbols"
# So why is the above better
# Let's take a look
puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

# The above code example is lifted from Codecademy but is a great example of why it's useful
# The output will show the below:
#                            --> 6402340
#                             > These two (Above Below) are the same key "string" 
#                             >  and have two instances of the same value in memory
#                            --> 6402120
#                            ==> 802268
#                             > These two (Above Below) are the same key :symbol
#                             >  and there are only a single instance of the key in memory
#                            ==> 802268

puts ""

puts "Convert Strings to Symbols"
# You can convert strings into symbols
my_string = "string"
puts my_string.to_sym
# or
puts my_string.intern
# Two ways to do the same thing.
# Just why...why..god please why. 
# One way to do something is fine
# Now when I read other peoples code I have to remember both frickin' ways

puts ""

puts "Convert from Symbol to String"
# You can convert symbols into strings
my_symbol = :new_symbol
puts my_symbol.to_s
# I swear to go if they give me another way to do this I am going to scream

puts ""

puts "Rocket Format"
# Okay, so we have been learning how to create Hashes using the Rocket format
# Example
hash_rocket = {
    :symbol_1 => "Symbol 1",
    :symbol_2 => "Symbol 2"
}
puts hash_rocket

puts ""

puts "Colon Format"
# We can use the Colon notation instead
# Keep in mind our below example is a symbol key not a string key
hash_colon = {
    symbol_3: "Symbol 3",
    symbol_4: "Symbol 4"
}
puts hash_colon