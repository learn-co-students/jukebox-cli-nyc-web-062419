#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
 "Go Go GO" => 'Users/luismiguelascencio/Development/labs/jukebox-cli-nyc-web-062419/audio/Emerald-Park/01.mp3',
 "LiberTeens" => 'Users/luismiguelascencio/Development/labs/jukebox-cli-nyc-web-062419/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  'Users/luismiguelascencio/Development/labs/jukebox-cli-nyc-web-062419/audio/Emerald-Park/03.mp3',
 "Guiding Light" => 'Users/luismiguelascencio/Development/labs/jukebox-cli-nyc-web-062419/audio/Emerald-Park/04.mp3',
 "Wolf" => 'Users/luismiguelascencio/Development/labs/jukebox-cli-nyc-web-062419/audio/Emerald-Park/05.mp3',
 "Blue" => 'Users/luismiguelascencio/Development/labs/jukebox-cli-nyc-web-062419/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => 'Users/luismiguelascencio/Development/labs/jukebox-cli-nyc-web-062419/audio/Emerald-Park/07.mp3'
 }

def help
  help = <<-HELP
  I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program
  HELP
  
    puts help
  end



def list(my_songs)
  my_songs.keys.each_with_index do |song, song_number|
    puts "#{song_number+1}. #{song}"
  end
end


def play(my_songs)
  puts "Please enter a song name:"
  file_to_play= gets.chomp
  if my_songs.keys.include?(file_to_play) then puts "Now playing #{file_to_play}" 
    system "open #{my_songs[file_to_play]}"
  else puts "Invalid input, please try again"
  end
end



def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  loop do 
    puts "Please enter a command:"
    user_input= gets.chomp
    case user_input
    when "play"
      play(my_songs)
    when "help"
      help
    when "list"
      list(my_songs)
    when "exit"
      exit_jukebox
      break
    end
  end
end
