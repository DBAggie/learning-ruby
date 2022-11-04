# A class is a blueprint for creating objects (a particular data structure)
# providing initial values for state (member variables) and implementations of behavior 
# (member functions or methods)

# A class is a user-defined data type, which holds its own data members and member functions
# which can be accessed and used by creating an instance of that class. A class is like an object 
# constructor, or a "blueprint" for creating objects.

# The class keyword is used to define a class in Ruby. The class name should always begin with a 
# capital letter.
system("cls")

class Vehicle
    def initialize(make, model, year)
        @make = make
        @model = model
        @year = year
    end
end

supra = Vehicle.new("Toyota", "Supra", 1995)
puts supra.inspect
puts ""

# Example of Inheritance
# Sport acts as the parent class
# Football and Tennis are child classes that inherit from Sport
class Sport
    def initialize(team_a, team_b)
        @team_a = team_a
        @team_b = team_b
    end
    
end

class Football < Sport
    def initialize(team_a, team_b, ball_type)
        super(team_a, team_b)
        @ball_type = ball_type
        @home_team = team_a
    end
end

class Tennis < Sport
    def initialize(team_a, team_b, court_type)
        super(team_a, team_b)
        @court_type = court_type
    end
    def get_team_a
        return @team_a
    end

    def get_team_b
        return @team_b
    end
end

football = Football.new("Cowboys", "Redskins", "Footbal")
tennis = Tennis.new("Rafael Nadal", "Roger Federer", "Clay")


puts football.inspect
puts ""
puts tennis.inspect
puts ""
puts tennis.get_team_a