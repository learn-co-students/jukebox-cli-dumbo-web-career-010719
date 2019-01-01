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
  puts " I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program "
end

def list(songs)
  songs.each_with_index { |item, index|
    puts "#{index+1}. #{item}" }
end
# can find a song when given a number from the user
# can find a song when given a full song name
# returns an error when given a number that does not correspond to a song
def play(array)
  puts "Please enter a song name or number:"
  response =  gets.chomp
  if (1..9).to_a.include?(response.to_i)
   puts "Playing #{array[response.to_i - 1]}"
  elsif array.include?(response)
    puts "Playing #{response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
    if user_response == "list"
      list(songs)
    elsif user_response == "play"
      play(array)
    elsif user_response == "help"
      help
    elsif user_response == "exit"
      exit_jukebox
    end
end
