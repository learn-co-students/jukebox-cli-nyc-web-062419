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
  puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
end


def list(songs)
  songs.each_with_index do |song, id|
    puts "#{(id+1).to_s}. #{song}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp 
  songs.each_with_index do |song, id|
    if song == input || (id+1).to_s == input
      puts "Playing <#{song}>"
      return
    end
  end
  puts "Invalid input, please try again"
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  while true 
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      break
    end
  end
end


