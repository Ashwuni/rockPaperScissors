def rps
    # Rock paper scissors program
    # Written by Ashwuni Kumar
    # 06-14-2020

    puts "Welcome to Roshambo! Let's play 'Rock Paper Scissors!'"
    print "My name is Ashwuni! What's your name? "

    $name=gets.chomp
    puts "Welcome, #{$name}! Let's start!"
    
    computer_choice = 1 + rand(3)
    
    $computer_score = 0
    $user_score = 0

    while true
        puts "I've picked my move! What's your move #{$name}?", "1. Rock",  "2. Paper",  "3. Scissors",  "4. Quit"
        print "Please enter your move [1-4] "
        user_choice=gets.chomp.to_i
        
        if user_choice == computer_choice 
            puts "We tied! Choose again."
        elsif user_choice == 1 && computer_choice == 3 
            puts "You picked rock. I chose scissors!"
            $user_score+=1
            puts " #{$name}\'s Score: #{$user_score}, \tComputer Score: #{$computer_score}"      
        elsif computer_choice == 1 && user_choice == 3 
            puts "You picked scissors. I chose rock!"
            $computer_score+=1
            puts " #{$name}\'s Score: #{$user_score}, \tComputer Score: #{$computer_score}"       
        elsif user_choice == 2 && computer_choice == 1 
            puts "You picked paper. I chose rock!"
            $user_score+=1
            puts " #{$name}\'s Score: #{$user_score}, \tComputer Score: #{$computer_score}"
        elsif computer_choice == 2 && user_choice == 1 
            puts "You picked rock. I chose paper!"
            $computer_score+=1
            puts " #{$name}\'s Score: #{$user_score}, \tComputer Score: #{$computer_score}"
        elsif user_choice == 3 && computer_choice == 2 
            puts "You picked scissors. I chose paper!"
            $user_score+=1
            puts " #{$name}\'s Score: #{$user_score}, \tComputer Score: #{$computer_score}"
        elsif computer_choice == 3 && user_choice == 2 
            puts "You picked paper. I chose scissors!"
            $computer_score+=1
            puts " #{$name}\'s Score: #{$user_score}, \tComputer Score: #{$computer_score}"
        elsif user_choice == 4 
            puts "Thanks so much for playing!", " #{$name}\'s Score: #{$user_score}, \tComputer Score: #{$computer_score}"
            if $user_score> $computer_score
                puts "You won! Congratulations!!" 
                break
            elsif $user_score< $computer_score
                puts "I won! Better luck next time!"
                break
            else
                puts "We tied! Better luck next time!"
                break
            end
        else
            puts "Sorry! That's not a valid choice! "
        end
    end     
end
rps