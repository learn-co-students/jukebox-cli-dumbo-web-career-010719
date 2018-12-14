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
    p "I accept the following commands:"
    p "- help : displays this help message"
    p "- list : displays a list of songs you can play"
    p "- play : lets you choose a song to play"
    p "- exit : exits this program"
end

# FIRST ATTEMPT:
# def play(songs_array)
#     p "Please enter a song name or number:"
#     user_input = gets.chomp
#
#     songs_array.all? do |song, index|
#         if user_unput == song || user_input == index
#             p "Playing #{song}"
#         else
#             p "Invalid input, please try again"
#         end
#     end
# end


def play(songs_array)
    p "Please enter a song name or number"
    user_input = gets.chomp

    songs_array.each_with_index do |song, index|
        if user_input.to_i == (index+1) || user_input == song
            p "Playing #{song}"
            break
        else
            p "Invalid input, please try again"
            break
        end
    end
end


def list(songs_array)
    songs_array.each_with_index do |song, index|
        index+=1
        p "#{index}. #{song}"
    end
end


def exit_jukebox
    p "Goodbye"
end


# FIRST ATTEMPT
# def run(songs)
#     # combine the helper methods
#     help
#     p "Please enter a command:"
#     user_input = gets.chomp # or gets.strip
#
#     while user_input != "exit"
#         if user_input == "list"
#             list
#         elsif user_input == "play"
#             play(user_input)
#         elsif user_input == "help"
#             help
#         end
#
#
#         if user_input == "exit"
#             exit_jukebox
#             break
#         end
#     end
# end

def run(songs)
    help
    input = ""

    while input != "exit"
        puts "Please enter a command:"
        input = gets.chomp

        case input
        when "play"
            play(song)
        when "list"
            list(songs)
        when "help"
            help
        when "exit"
            exit_jukebox
        else
            p "Invalid input, please try again"
        end

    end
end
