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

def list(array)
	array.each_with_index do |song, index|
	puts "#{index + 1}. #{song}"
  end
end

def play(songs_array)
	puts "Please enter a song name or number:"
	input = gets.chomp 
	songs_array.each_with_index do |songs, index|
		index = index + 1
		if input.include?(songs)
			puts "Playing #{songs}"
		elsif input.include?(index.to_s)
			puts "Playing #{songs}"
		else
			puts "Invalid input, please try again"
		end
	end
end

def exit_jukebox
	puts "Goodbye"
end

def run(input)
	help 
	puts "Please enter a command:"
	input = gets.chomp
	if input == "exit" 
		exit_jukebox
	elsif input == "list"
		list(array)
	elsif input == "play"
		play(array)
	elsif input == "help"
		help
	else 
		puts "Please enter a command:"
		input = gets.chomp
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