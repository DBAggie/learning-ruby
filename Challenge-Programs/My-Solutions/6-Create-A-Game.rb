# Create a basic game
# -------------
# | X | X | X |
# -------------
# | X | X | X |
# -------------
# | X | X | X |
# -------------
#
# Create a coordinate system
# -------------
# |1-1|2-1|3-1|
# -------------
# |1-2|2-2|3-2|
# -------------
# |1-3|2-3|3-3|
# -------------
# 
system("cls")
$players = {
    "player_1" => [],
    "player_2" => [],
    "player_1_piece" => "X",
    "player_2_piece" => "O"
}
$current_player = 1
$coordinates = [[1, 1], [2, 1], [3, 1], [1, 2], [2, 2], [3, 2], [1, 3], [2, 3], [3, 3]]
$selections = []

def createPlayLine(coor)
    cell_start = "| " 
    cell_end = " "
    line = ""
    count_column = 1
    for i in 1..3 
        coor.each do |cell|
            if cell[0].to_i == i
                line += cell_start + cell[2] + cell_end
                count_column += 1
            end
        end
        if count_column == i
            count_column += 1
            line += cell_start + " " + cell_end
        end
    end
    line += "|\n"
    print line
end

def createGameBoard(obj)
    system("cls")
    divider = "-------------\n"
    # cell_start = "| " 
    # cell_end = " "
    count_row = 1
    joined_arr = []
    obj["player_1"].each { |y| joined_arr << y }
    obj["player_2"].each { |y| joined_arr << y } if obj["player_2"].length >= 1
    for i in 1..7
        if obj["player_1"].length == 0 && obj["player_2"].length == 0
            puts "I ran for some reason"
        elsif i % 2 != 0
            print divider if i % 2 != 0
        else
            row_select = joined_arr.select{ |x| x[1] == count_row}
            if row_select.length > 0
                createPlayLine(row_select)
            else
                3.times{print "#{cell_start} #{cell_end}"}
                print "|\n"
            end
            count_row += 1
        end
    end
    puts ""
    test()
end

def test
    print "Enter an option: "
    selection = gets.chomp!
    puts ""
    if selection.downcase == 'q'
        return
    elsif $selections.length == nil || ($selections.include? selection.to_i - 1) == false
        $players["player_#{$current_player}"] << $coordinates[selection.to_i - 1] 
        $players["player_#{$current_player}"][$players["player_#{$current_player}"].length - 1] << $players["player_#{$current_player}_piece"]
        $selections << selection.to_i - 1
        if $current_player == 1
            $current_player += 1
        else
            $current_player -= 1 if $current_player % 2 == 0
        end
    else
        puts "That options has already been selected\n"
        test()
    end
    createGameBoard($players)
end
test()