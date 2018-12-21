require 'pry'
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

# def say_hello(name)
# 	puts "Hi #{name}!"
# end

# puts "Enter your name:"
# user_name = gets.chomp

# puts say_hello(user_name)

def help		# Output instructions for the user on how to use the jukebox
	puts "I accept the following commands:"
	puts "- help : displays this help message"
	puts "- list : displays a list of songs you can play"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits this program"
end

def play(songs)		# Output a list of songs that the user can play
	puts "Please enter a song name or number:"	# Asks user to input song name or matching index
	user_input = gets.chomp						# Stores user input to user_input
	songs.each_with_index do |song_name, index|	# Iterate through songs array to check if user's response is valid song number or song name
		if user_input == song_name
			puts "Playing #{song_name}"
		elsif user_input.to_i == index + 1		# user_input is a string - convert to int
			puts "Playing #{songs[index]}"
		else puts "Invalid input, please try again"
		end
	end
end

def list(songs)		# Ask a user to input a song name or number then output song
	songs.each_with_index do |song, index|
		puts "#{index + 1} #{song}"
	end
end

def exit_jukebox	# If the user types in exit, the jukebox should say goodbye and the program should shut down
		puts "Goodbye"
end

# Then, it should `puts` out the prompt: `"Please enter a command:"`. It should 
# Call on `help` method to show user available commands
# `puts` out prompt: "Please enter a command:"
# capture user's response using `gets.chomp` or `gets.strip`
def run(songs)		
	help		
	puts "Please enter a command:"	
	user_input = gets.chomp		
	case user_input
	when "help"
		help
	when "list"
		list(songs)
	when "play"
		play(songs)
	when "exit"
		exit_jukebox
	else
		"Invalid input, please try again"
	end
end