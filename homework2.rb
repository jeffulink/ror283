
class Player
    def initialize(name)
        @name = name
        
    end
end

class User < Player
    def get_gesture
        input = gets.chomp.upcase
    end
end

class Computer < Player
    def get_gesture
        computer = ["R", "P", "S"]
        input = computer.sample
    end
end

class RPS
    def initialize
        puts "plz show your name : "
        name = gets.chomp
        puts "hello #{name}" 
        play
        pay
        puts "Bye! Bye! #{name}"
    end

    def play
        puts "開始玩==>猜拳遊戲！"
        begin
        get_player_getsture
        who_won
        play_again?
        end 
    end

    def get_player_getsture
     user = User.new(@name)
     @user_input = user.get_gesture
     computer = Computer.new(computer)
     @computer_input = computer.get_gesture
    end

    def who_won
        $won_times = 0
      if @user_input == "R"
         if @computer_input == "R" && @user_input == "R"
              puts "the game is drawn!"
            elsif @computer_input == "P" && @user_input == "R"
                puts "you lose!"
         else @computer_input == "S" && @user_input == "R"
              puts "you won! "
              $won_times +=1
              
          end
        end
      if @user_input == "P"
        if @computer_input == "R" && @user_input == "P"
              puts "you won!"
              $won_times +=1
            elsif @computer_input == "P" && @user_input == "P"
                puts "the game is drawn!"
            else @computer_input == "S" && @user_input == "P"
                 puts "you lose!"
        end
      end
      if @user_input == "S"
        if @computer_input == "R" && @user_input == "S"
              puts "you lose!"
            elsif @computer_input == "P" && @user_input == "S"
                  puts "you won!"
                  $won_times +=1
        else @computer_input == "S" && @user_input == "S"
                puts "the game is drawn!!"
        end
      end
    end
      
    def play_again?
        flag = true
        puts "would you like to play again？：[Y/N]"
        response = gets.chomp.upcase
        case response
            when "Y"
                play
            when "N"
                flag = false
        end
    end

#the private code not yet reday!
    private
    def pay
        puts "you won #{$won_times}"
    end
       
end
game = RPS.new

 


  