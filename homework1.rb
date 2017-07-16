begin #可以美化輸出
  puts "|===============================================|" 
  puts "|Welcome to Rock Paper Scissors!!!              |"
  puts "|===============================================|"

  begin
    puts "please choose one of the following: R / P / S"
    user_input = gets.chomp.upcase
    computer = ["R", "P" ,"S"]
    puts "computer_input: "
    puts computer_input = computer.sample
  end 
  begin 
      if user_input == "R"
      if computer_input == "R" && user_input == "R"
          puts "the game is drawn!"
      elsif computer_input == "P" && user_input == "R"
          puts "you lose!"
      else computer_input == "S" && user_input == "R"
          puts "you won!"
      end
      end
  end
  begin 
      if user_input == "P"
      if computer_input == "R" && user_input == "P"
          puts "you won!"
      elsif computer_input == "P" && user_input == "P"
          puts "the game is drawn!"
      else computer_input == "S" && user_input == "P"
          puts "you lose!"
      end
      end
  end
  begin 
      if user_input == "S"
      if computer_input == "R" && user_input == "S"
          puts "you lose!"
      elsif computer_input == "P" && user_input == "S"
          puts "you won!"
      else computer_input == "S" && user_input == "S"
          puts "the game is drawn!"
      end
      end
  end
end
