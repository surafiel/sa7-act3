# Define the rooms and their points
ROOMS = {
  1 => 5,
  2 => 10,
  3 => 15
}

def start_game
  total_points = 0

  puts "Welcome to the Adventure Game!"
  puts "You have #{total_points} points."

  loop do
    puts "Choose a room (1-3) to enter or 'exit' to end the game:"
    input = gets.chomp.downcase

    if input == 'exit'
      puts "Game over! You collected a total of #{total_points} points."
      break
    elsif (1..3).include?(input.to_i)
      room_number = input.to_i
      points = ROOMS[room_number]

      puts "You entered Room #{room_number} and earned #{points} points."
      total_points += points
      puts "You now have a total of #{total_points} points."
    else
      puts "Invalid input. Please enter a room number between 1 and 3 or 'exit' to end the game."
    end
  end
end

# Start the game
start_game