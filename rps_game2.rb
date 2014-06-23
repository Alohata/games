
5.times {
  puts " --Rock, Paper, Scissors? Go!--"
  puts "Your choise is: "
  user_run = gets.chomp

  game_runs = ["paper", "scissors", "rock"]

  comp_run = game_runs[rand(0..2)]
  puts "Computer choise is:"
  puts comp_run

  def compare (user_run, comp_run)

    if  user_run == "rock" && comp_run =="scissors"
      puts "You win!"
    elsif comp_run == "rock" && user_run == "scissors"
      puts "Sorry, you lose!"
    end

    if  user_run == "scissors" && comp_run == "paper"
      puts"You win!"
    elsif comp_run == "scissors" && user_run == "paper"
      puts "Sorry, you lose!"
    end

    if  user_run == "paper" && comp_run == "rock"
      puts "You win!"
    elsif comp_run == "paper" && user_run == "rock"
      puts "Sorry, you lose!"
    end

    if comp_run == user_run
      puts "No winner" 
    end 
  end

  compare(user_run, comp_run)
}