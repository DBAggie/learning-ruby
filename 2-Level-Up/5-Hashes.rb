# Hashes are similar to objects in Javascript
# You create a Key Value pair

# Decalare a Hash Literal
pets = {
    "Dumbo" => "elephant",
    "Jimminy" => "cricket",
    "Bella" => "dog",
    "Romeo" => "cat"
}
puts pets["Dumbo"]
puts ""

# Declare a new Hash Literal
my_pets = {
    "Bella" => "dog",
    "Romeo" => "cat",
    "Chewy" => "dog"
}
my_pets.each do |pet|
    puts "I owned the following pet: #{pet}"
end
puts ""

# More complex literal Hash
pets_2d = {
    "dogs" => ["Bella", "Chewy"],
    "elephants" => ["Dumbo"],
    "cats" => ["Romeo"],
    "crickets" => ["Jimminy"]
}
pets_2d["dogs"].each do |dog|
    print "#{dog}, "
end

puts ""
puts ""

# Has declared using Hash.new
my_string_array = Hash.new
my_string_array["Poem"] = "An old silent pond, A frog jumps into the pond, Splash! Silence again."
my_string_array["Video Game"] = "DOOM"

puts "In My String there is a video game called: #{my_string_array["Video Game"]}"
puts "-------------------"
string_split = my_string_array["Poem"].split(", ") # <== This is an array now, not a Hash
string_split.each {|line| puts line}
puts ""

# Codecademy example
friends = ["Milhouse", "Ralph", "Nelson", "Otto"]
family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }