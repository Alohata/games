
5.times do
  puts"------------------
  Rock, Paper, Scissors? Go!
  "
  puts "Your choise is: "
  user_run = gets.chomp

  game_runs = ["paper", "scissors", "rock"]

  comp_run = game_runs[rand(0..2)]
  puts "Computer choise is:"
  puts comp_run

  def compare (user_run, comp_run)

    if comp_run == user_run
      puts "No winner" 

    elsif  user_run == "rock" && comp_run =="scissors"
      puts "You win!"

    elsif  user_run == "scissors" && comp_run == "paper"
      puts"You win!"

    elsif  user_run == "paper" && comp_run == "rock"
      puts "You win!"
    else
      puts"Sorry, you loose!"
    end
  end
  compare(user_run, comp_run)
end