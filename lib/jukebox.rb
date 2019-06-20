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

  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"

end


def list (song_list)

  song_list.each_with_index do |song, i|

    puts "#{i+1}. " + song

  end
end

def play (song_list)

  puts "Please enter a song name or number: "

  choice = gets.chomp

  song_names = song_list.collect {|song| song.split("-")[-1][1..-1]}

  if song_names.include? choice
    puts "Playing " + choice
  elsif 0 < choice.to_i && choice.to_i <= song_names.size
    puts song_list[choice.to_i - 1]
  elsif song_list.include? choice
    puts choice
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end


def run(song_list)

  help
  puts "Please enter a command: "
  input = gets.chomp

  while true

    if input == "help"
      help
    elsif input == "list"
      list(song_list)
    elsif input == "play"
      play(song_list)
    elsif input == "exit"
      exit_jukebox
      break
    end

    input = gets.chomp

  end

  

end