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

def createGameBoard(obj)
    divider = "-------------\n"
    cell_start = "| " 
    cell_end = " "
    width = 13
    height = 7
    count_row = 1
    for i in 1..7
        if obj["player_1"].length == 0 && obj["player_2"].length == 0
            3.times{print "#{cell_start} #{cell_end}"} if i % 2 == 0
            print "|\n" if i % 2 == 0
        elsif i % 2 == 0
            joined_arr = []
            obj["player_1"].each { |y| joined_arr << y }
            obj["player_2"].each { |y| joined_arr << y } if obj["player_2"].length >= 1
            print "#{joined_arr} \n"
            count_column = 1
            cell_rem = 3
            for z in 1..3
                joined_arr.each do |x|
                    if x[1] == count_row
                        if x[0] == count_column
                            print "#{cell_start}#{x[2]}#{cell_end}"
                            # print "I should run 1 time #{count_column} "
                            cell_rem -= 1
                        end
                    end
                end
                # puts " \n"
                count_column += 1
            end
            if cell_rem > 0
                cell_rem.times { print "#{cell_start} #{cell_end}" } 
                # print "I should also run #{cell_rem} times"
            end
            print "| \n"
            count_row += 1
        else
            print divider if i % 2 != 0
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
        system("cls")
        puts "That options has already been selected\n"
        test()
    end
    createGameBoard($players)
end
test()