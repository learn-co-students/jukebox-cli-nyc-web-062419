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
  commands = ["play","list","exit","help"]
  commands.each {|command| puts command}
end

def play songs
  play_this = "Invalid input, please try again"
  puts "Please enter a song name or number:"
  input = gets.chomp
  if input.to_i > 0 && input.to_i <= songs.length
      play_this =  songs[input.to_i-1]   
  else
    songs.each do |song|
      play_this = song unless !song.include? input  
    end
  end
  puts play_this
end

def list songs
  songs.each_with_index do |song,i|
    puts "#{i+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run songs
  loop do
  puts "Please enter a command:"
  input = gets.chomp
    case input
    when 'play'
      play songs
    when 'help'
      help
    when 'list'
      list songs
    when 'exit'
      exit_jukebox
      break
    end
  end
end
