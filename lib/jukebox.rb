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
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  if songs.include? (song_choice)
      puts "Playing #{song_choice}"
  elsif song_choice.to_i <= songs.length && song_choice.to_i > 0
    songs.each_with_index do |song, index|
      if song_choice.to_i == index + 1
        puts "Playing #{song}"
      end
    end
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    command = gets.chomp
    if command == "help"
      help
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "exit"
      exit
      break
    end
  end
end