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

def list(my_songs)
  my_songs.each {|key, value|
puts "#{key}"
  }
end

def play(my_songs)
  puts "Please enter a song name:"
  user_input = gets.chomp
  if my_songs.has_key?(user_input)
   puts "Playing #{user_input}"
   system "open #{my_songs.key(user_input)}"
  else
   puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  loop do
    puts"Please enter a command:"
    user_input = gets.downcase.chomp
    case user_input
    when "exit"
      exit_jukebox
      break
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "help"
      help
    else
      help
    end
  end
  end
