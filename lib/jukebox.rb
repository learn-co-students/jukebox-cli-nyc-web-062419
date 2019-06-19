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

def help
  puts "I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs you can play
        - play : lets you choosr a song to play
        - exit : exits this program"

end

def list(songs)
  songs.each_with_index do |song, index|
  puts "#{index + 1}" + "." + "#{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_song = gets.chomp
    songs.each_with_index do |song, index|
      if user_song == song || user_song == (index + 1).to_s
        puts "Playing #{song}"
      else
        puts "Invalid input, please try again"
        
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(command) 
  loop do
    puts "Please enter a command:"
    user_response = gets.chomp
    case user_response
    when 'help'
      help
    when 'list'
      list
    when 'play'
      play 
    when 'exit'
    break    
  end
 end
 exit_jukebox
end