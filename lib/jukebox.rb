songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  count = 1
  
  songs.each do |song|
    puts "#{count}. #{song}"
    count += 1
  end
end

def play(songs)
  puts "Please enter a song name or number"
  user_input = gets.chomp
  
  if songs.include?(user_input.to_s)
    puts "Playing #{songs[songs.index(user_input)]}"
  elsif user_input.to_i.is_a?(Numeric) and user_input.to_i <= songs.length and user_input.to_i > 0
    puts "Playing #{songs[user_input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  
  while true
    puts "Please enter a command:"
    input = gets.chomp
    
    if input == "help"
      help
    elsif input == "play"
      play(songs)
    elsif input == "list"
      list(songs)
    elsif input == "exit"
      exit_jukebox
      break
    end
  end

end
