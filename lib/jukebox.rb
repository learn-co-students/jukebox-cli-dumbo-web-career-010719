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
  puts "help"
  puts "list"
  puts "play"
  puts "exit"
end

def play(songs)
  puts "Please enter a song name or number:"
  inp = gets.chomp
  if inp.length < 2 && inp.to_i.between?(1, 9)
    puts "#{songs[inp.to_i - 1]}"
  elsif songs.include?(inp)
    puts inp
  else
    puts "Invalid input, please try again"
  end
end

def list(songArr)
  songArr.each.with_index { |elem, i|
    puts "#{i+1}. #{elem}"
  }
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