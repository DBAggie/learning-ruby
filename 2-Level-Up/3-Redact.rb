# This is one of the Codecademy applications they have you build
# I have updated it to add additional functionality
# This was mostly to practice.
# I have intentionally added a bug in the program
# It won't stop the program from running but it causes an issue
# Can you spot the issue and find the bug?
system("cls")
continue = true

while continue == true
    puts "Enter a string to redact: "
    text = gets.chomp
    puts "Enter a list of words to redact separated by a ',': "
    redact = gets.chomp

    redact_list = redact.split(",")
    words = text.split(" ");

    words.each do |word|
        count = 0
        redact_list.each do |redact_word|
            if word.downcase == redact_word.downcase
                print "REDACTED "
            elsif count == redact_list.length
                print word + " "
            else
                count += 1
            end
        end
    end
    print "Would you like to redact another string? (Yes/No)"
    again = gets.chomp
    if again.downcase == "no"
        continue = false
    end
end