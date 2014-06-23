3.times do
  rules = {'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock'}
  moves = rules.keys

  puts <<-EOF
---------------------------------
Choose one: Rock, Paper, Scissors
----------------------------------
EOF
  puts "You choose: "
  user_move = gets.chomp
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
  else
    puts "Sorry, you lose!"
  end
end