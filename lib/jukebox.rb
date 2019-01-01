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

require "pry"

def help
puts "I accept the following commands:

- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.map.with_index do |song, index|
    puts "#{index+1}. #{song}"
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
end
end

def play(songs)
   puts "Please enter a song name or number:"
   play_song = gets.chomp
   if (1..9).to_a.include?(play_song.to_i)
     puts "Playing #{songs[play_song.to_i-1]}"
   elsif songs.include?(play_song)
puts "Playing #{play_song}"
else
puts "Invalid input, please try again"
end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
input = " "

while input
  puts "Please enter a command:"
  input = gets.chomp
  case input
  when "list"
    list(songs)
  when "play"
  list(songs)
  play(songs)
  when "help"
  help
  when "exit"
  exit_jukebox
  break
else
  help
  end
 end
end
