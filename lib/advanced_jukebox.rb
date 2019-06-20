#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => 'Users/iangrubb/Development/labs/jukebox-cli-nyc-web-062419/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/iangrubb/Development/labs/jukebox-cli-nyc-web-062419/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/iangrubb/Development/labs/jukebox-cli-nyc-web-062419/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/iangrubb/Development/labs/jukebox-cli-nyc-web-062419/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/iangrubb/Development/labs/jukebox-cli-nyc-web-062419/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/iangrubb/Development/labs/jukebox-cli-nyc-web-062419/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/iangrubb/Development/labs/jukebox-cli-nyc-web-062419/audio/Emerald-Park/07.mp3'
}

def help

  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"

end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  my_songs.keys.each_with_index do |song, i|

    puts "#{i+1}. " + song

  end

end


def play(my_songs)

  puts "Please enter a song name: "

  choice = gets.chomp

  if my_songs.keys.include? choice
    system 'open ' + my_songs[choice]
  else
    puts "Invalid input, please try again"
  end
  
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb

  help
  puts "Please enter a command: "
  input = gets.chomp

  while true

    if input == "help"
      help
    elsif input == "list"
      list(my_songs)
    elsif input == "play"
      play(my_songs)
    elsif input == "exit"
      exit_jukebox
      break
    end

    input = gets.chomp

  end
end
