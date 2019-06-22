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
	input = gets.chomp 
		if songs.include?(input)
			puts "Playing #{input}"
		elsif (1..songs.length).to_a.include?(input.to_i)
			puts "Playing #{songs[input.to_i - 1]}"
		else 
			puts "Invalid input, please try again"
		end		
end

def exit_jukebox
	puts "Goodbye"
end

def run(songs_array)
	help 
	puts "Please enter a command:"
	input = gets.chomp
	if input == "exit"
		exit_jukebox
	elsif input == "list"
		list(songs_array)
		run(songs_array)
	elsif input == "play"
		play(songs_array)
		run(songs_array)
	elsif input == "help"
		run(songs_array)
	else 
		puts "Invalid input, please try again"
		run(songs_array)
	end
end


# def runner
#   welcome
#   card_total = initial_round
#     until card_total > 21
#       card_total = hit?(card_total)
#       display_card_total(card_total)    
#     end
#   end_game(card_total)
# end
    

# puts "Please enter a command:"
# users_input = gets.chomp

# puts commands(users_input)