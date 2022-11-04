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

def check_win(player_1, player_2)
    has_won = false
    if player_1.length >= 4 || player_2.length >= 4
        puts "It's a draw!"
        has_won = true
    else
        for i in 1..3
            check_range_1 = player_1.select { |x| x[1] == i }
            check_range_2 = player_2.select { |x| x[1] == i }
            if check_range_1.length == 3
                puts "Player 1 wins!"
                has_won = true
            elsif check_range_2.length == 3
                puts "Player 2 wins!"
                has_won = true
            end
        end
        for i in 1..3
            check_range_1 = player_1.select { |x| x[0] == i }
            check_range_2 = player_2.select { |x| x[0] == i }
            if check_range_1.length == 3
                puts "Player 1 wins!"
                has_won = true
            elsif check_range_2.length == 3
                puts "Player 2 wins!"
                has_won = true
            end
        end
    end
    if has_won == true
        puts "Game Over!"
        puts "Would you like to player again? (Y/N) "
        run_again = gets.chomp!
        if run_again.downcase == 'y'
            $players["player_1"] = []
            $players["player_2"] = []
            $selections = []
            $current_player = 1
            # system("cls")
            # test()
        else
            return
        end
    end
    test()
end

def createGameBoard(obj)
    # system("cls")
    divider = "-------------\n"
    cell_start = "| " 
    cell_end = " "
    count_row = 1
    joined_arr = []
    obj["player_1"].each { |y| joined_arr << y }
    obj["player_2"].each { |y| joined_arr << y } if obj["player_2"].length >= 1
    for i in 1..7
        if obj["player_1"].length == 0 && obj["player_2"].length == 0
            puts "I ran for some reason"
        elsif i % 2 != 0
            # print divider if i % 2 != 0
        else
            row_select = joined_arr.select{ |x| x[1] == count_row}
            if row_select.length > 0
                # createPlayLine(row_select)
            else
                # 3.times{print "#{cell_start} #{cell_end}"}
                # print "|\n"
            end
            count_row += 1
        end
    end

    player_1 = obj["player_1"]
    player_2 = obj["player_2"]
    if player_1.length >= 3 || player_2.length >= 3
        check_win(player_1, player_2)
    else
        puts ""
        test()
    end
end

def test
    print "Enter an option: "
    puts "\n The current player is: #{$current_player}"
    selection = gets.chomp!
    puts ""
    if selection.downcase == 'q'
        return
    elsif $selections.length == nil || ($selections.include? selection.to_i - 1) == false
        puts "The current player again is: #{$current_player}"
        $players["player_#{$current_player}"] << $coordinates[selection.to_i - 1] 
        $players["player_#{$current_player}"][$players["player_#{$current_player}"].length - 1] << $players["player_#{$current_player}_piece"]
        $selections << selection.to_i - 1
        puts $players
        print "\n + #{$selections} + \n"
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