# learning-ruby
I am learning Ruby. This is just some files I made while learning

The intention behind this project is to provide informational programs that can give you a clear code to output relationship. This is intended to help understand the concept of what is being done and to help reinforce recognizing common pattens. The vast majority of your time spent learning to code and coding itself will be reading code. Half the time I am either reading over code examples within documentation or just reading my own code again because I forgot what the hell I did 3 months ago when I created this monstrosity. You can look either of my current Project Daedalus repos for an example of that. We can create comments to act as notes but, they should only be that..notes. Nothing more. We do not use comments as documentation because it clutters the stuff we actually have to read to truly understand what is happening.

You know..fuck this let's do an example:

Let's imagine we have the below ruby program
```ruby
def example_method
    print "Please enter a baseball team name: "
    team_name = gets.chomp
    if team_name.downcase == "rangers"
        puts "You chose correctly!"
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
```


I could go through there and comment the code like so:
```ruby
# Method that asks for input from the user
# The method will check the input against our favorite team
# and output the approrpriate result
# then we prompt.. Yeah I am not going any further..you get the idea.
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
```


A much better method is:
```ruby
# Method to take input and return a result*/
def example_method
    # Prompt for user input and save input to variable
    print "Please enter a baseball team name: "
    team_name = gets.chomp

    # Check if input is equal to favorite team
    if team_name.downcase == "rangers"
        puts "You chose correctly!"
    else
        puts "Wow...really. Just...please leave"
    end

    # Prompt to run program again
    print "Would you like to enter another team name?: "
    answer = gets.chomp
    if answer.downcase == "no"
        return
    end
    system "cls"
    example_method()
end
example_method()
```

This is minimal commenting in action. It gives you the highlights and you fill in the blanks by reading throug the code. It makes it quick to find sections in the code and doesn't force us to read the biography of a neurotic ametuer coder. 

You might be thinking to yourself when you get into the programs in this repo *But you do it all the time*. Do as I say. Not as I do. When I write things that aren't learning tools I don't use them to the extent I do here. You will find that I reduce the number of comments you see as you progress through the programs. 

Anyway, comment rant over. 

The point of this is that there isn't a point. I found it super helpful writing this up as I refer to some of these little code snippet programs every now and then. Play around, look at the examples, and try some of the challenge programs. Just remember, give the challenge an honest shot before you look at what I did. I am not the end all and be all. I am slapping this shit together for fun. don't take anything too seriously here. 

It's Okay to:
- Consult Dr. Google
- Look on StackOverflow
- Look at documentation
- and rip from other peoples work and make it your own

## How to use this Repo
Clone the repository using [Git](https://git-scm.com/downloads)

```bash
    git clone https://github.com/DBAggie/learning-ruby.git
```

Install [Ruby](https://www.ruby-lang.org/en/)

Open the project folder in your preferred code editor.
I will be using VSCode for my examples.

Once you have opened the folder in your code editor bring up your preferred code editor.
Hotkey for this in VSCode is CTRL+~ or you can click on the Terminal option in the top left.

In your terminal, run a file using the below code example. You will see the output appear in the console. Some programs will require user input. Please submit either a ticket or Pull Request for any updates to make this more Beginner friendly.

#### How to run a file
```bash
    ruby ./1-Super-Beginner/1-Vars-Ifs-Operators.rb
```
Remember you can use the Tab key to autocomplete the name for you.

For instance: ruby ./1-Sup <== At this point you can click Tab and it will complete for you

Next you will see: ./1-Super-Beginner/1-Va  <== Let's finish up here and use tab complete to get our filename

This will give you: ./1-Super-Beginner/1-Vars-Ifs-Operators.rb

Voila! You are running the files. Create your own while you are at it!


## The folder strucutre is loosely named
- Super Beginner
    - Contains ez pz stuff
        - Make a variable
        - Print stuff
        - Get user input
        - If Else logic
        - A few example programs with explanations
        - Methods! <-- The ! symbol is intentional
- Level Up
    - Contains more logic based tools
        - While loops
        - Until loops
        - For loops
        - Methods on For loops
        - Some weird loop option
        - Arrays
        - Hashes
        - A few example projects with explanations
- Methods & Blocks
    - Contains exmaples for Methods, Blocks, and a little Sorting
        - Methods
        - Blocks
        - Sorting
        - Refactor of existing applications
- Hashes & Symbols
    - Contains examples for Hashes using Symbols
        - Hashes Extended
            - Symbols
        - Hash Benchmark Program
        - Hash Methods
- Challenge Programs
  - Enter a string get a string
  - More to Come!
- Coding With Wife
  - Length Converter

## To-Do:
- 1-Super-Beginner
- 2-Level-Up
    - 6-Histogram
        - Add logic to print a true histogram
- 3-Methods-Blocks
    - 4-Calculator
        - Refactor the calculator program to use Methods or Blocks
    - 5-Histogram
        - Refactor the Histogram program to use Method or Blocks
- Challenge Programs
  - String Manipulation
  - Make a Calculator
  - Calculate a fibonacci sequence
  - Sorting, Sorting, Sorting
  - Calculate the day someone was born using their age
    - Then do the reverse

## Coming Soon
- Hashes & Symbols (Sunday - 10/16)

### Good luck have fun!