# This lesson had some random sorting methods thrown in
# Here are some examples
system("cls")

# Random Method Sort
my_array = [5, 15, 3, 100, 42, 20, 13]
puts my_array.sort!

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below
books.sort! { |firstBook, secondBook| secondBook <=> firstBook }