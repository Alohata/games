score = [0, 0]
loop do
  rules = {'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock'}
  moves = rules.keys
  

  puts <<-EOF
-------------------------------------------------------------
Choose one: Rock, Paper, Scissors or Exit (to stop teh game)
-------------------------------------------------------------
EOF
  puts "You choose: "
  user_move = gets.chomp
  
  if user_move == "exit"
    puts "Good Bye!"
    break
  end

  if not moves.include? user_move
    puts "Wrong move: #{user_move}"
    next
  end

  comp_move = moves.sample

  puts "Computer choose: "
  puts comp_move

  if user_move == comp_move
    puts "It's a tie."
  elsif rules[user_move] == comp_move
    puts "You win!"
    score[0] += 1
  else
    puts "Sorry, you lose!"
    score[1] += 1
  end
  puts "Player score: #{score[0]}, Computer score: #{score[1]}"
end

