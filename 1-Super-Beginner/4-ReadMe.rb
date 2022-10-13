def example_method
    print "Please enter a baseball team name: "
    team_name = gets.chomp
    if team_name.downcase == "rangers"
        puts "You chose correctly"
    else
        puts "Wow...really. Just...please leave"
    end
    print "Would you like to enter another team name?: "
    answer = gets.chomp
    if answer.downcase == "no"
        return
    end
    system "cls"
    example_method()
end
example_method()