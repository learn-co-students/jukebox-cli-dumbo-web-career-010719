
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
  puts "I accept the following commands:",
  "- help : displays this help message",
  "- list : displays a list of songs you can play",
  "- play : lets you choose a song to play",
  "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  songs.each do |song|
    if response == song
      puts "Playing #{song}"
    elsif (1..9).to_a.include?(response.to_i)
      puts "Playing #{songs[response.to_i - 1]}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  response = gets.chomp
  if response == "help"
    help
  elsif response == "list"
    list(songs)
  elsif response == "play"
    play(songs)
  elsif response == "exit"
    exit_jukebox
  end
end
