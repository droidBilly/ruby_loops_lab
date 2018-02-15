def start_game
  random_number = rand(100)+1

  while true
    print "Please enter a number: "
    guess = gets.to_i
    if guess == random_number
      puts "Congrats you nailed it!"
      break
    elsif guess < random_number
      puts "Higher!"
    elsif guess > random_number
      puts "Lower!"
    else
      puts "Please enter a valid number from 1-100"
    end
  end
  puts @random_number
end

while true
  print "You want to play a game? (y/n) "
  answer = gets.chomp.downcase
  if answer == "n"
    puts "Thanks for playing, bye!"
    break
  elsif answer == "y"
    start_game
  else
    puts "that letter is invalid"
  end
end
