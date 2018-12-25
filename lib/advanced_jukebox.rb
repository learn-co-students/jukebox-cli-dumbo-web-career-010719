#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '/home/exuberant-parser-1642/jukebox-cli-dumbo-web-career-010719/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '/home/exuberant-parser-1642/jukebox-cli-dumbo-web-career-010719/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '/home/exuberant-parser-1642/jukebox-cli-dumbo-web-career-010719/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '/home/exuberant-parser-1642/jukebox-cli-dumbo-web-career-010719/audio/Emerald-Park/04.mp3',
# "Wolf" => '/home/exuberant-parser-1642/jukebox-cli-dumbo-web-career-010719/audio/Emerald-Park/05.mp3',
# "Blue" => '/home/exuberant-parser-1642/jukebox-cli-dumbo-web-career-010719/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '/home/exuberant-parser-1642/jukebox-cli-dumbo-web-career-010719/audio/Emerald-Park/07.mp3'
# }

def help
  puts "help"
  puts "list"
  puts "play"
  puts "exit"
end

# def list(songArr)
#   songArr.each.with_index { |elem, i|
#     puts "#{i+1}. #{elem}"
#   }
# end

def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  my_songs.each.with_index { |(k, v), i| puts "#{i+1}. #{k}"}
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
  puts "Please enter a song name:"
  inp = gets.chomp
  if my_songs.has_key?(inp)
    puts "Now playing #{inp}"
    system "open #{my_songs[inp]}"
  else
    puts "Invalid input, please try again"
  end
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songArr)
  help
  userInp = ""
  while userInp != "exit"
    puts "Please enter a command:"
    userInp = gets.chomp
    case userInp
    when "list"
      list(songArr)
    when "help"
      help
    when "play"
      play(songArr)
    when "exit"
      exit_jukebox
    end
  end
end