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
  - exit : exits the program"
end

def play(songs)
  puts "Please enter a song name or number:"
  usr_response = gets.chomp
  if songs.include? usr_response
    puts usr_response
  elsif (1..songs.count).include? usr_response.to_i 
    puts "Playing #{songs[usr_response.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  usr_response = gets.chomp
  while usr_response != "exit" 
    case usr_response
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    end
    puts "Please enter a command:"
    usr_response = gets.chomp
  end
  exit_jukebox
end


