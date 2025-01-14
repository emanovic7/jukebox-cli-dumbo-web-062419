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


#
# def say_hello(name)
#   "Hi #{name}!"
# end
#
#
# puts "Enter your name"
#
# user_name = gets.chomp
#
# puts say_hello(user_name)


def help
  puts  "I accept the following commands:"
  puts  "- help : displays this help message"
  puts  "- list : displays a list of songs you can play"
  puts  "- play : lets you choose a song to play"
  puts  "- exit : exits this program"
end


def list(songs)
  songs.each_with_index do |song, index|
    #binding.pry
    puts "#{index + 1} - #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp

  if (1..9).include?(song.to_i)
    puts "Playing #{songs[song.to_i - 1]}"
  elsif songs.include?(song)
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end

  # songs.each_with_index do |song, index|
  #   if song == song || song == index + 1
  #     puts "Playing #{song}"
  #   else
  #     puts "Invalid input, please try again"
  #   end
  # end

end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  user_input = ""
  while user_input
    puts "Please enter a command:"
    user_input = gets.chomp

    case user_input
    when "list"
      list(my_songs)
    when "help"
      help
    when "play"
      list(my_songs)
      play(my_songs)
    when "exit"
      exit_jukebox
      break
    else
      help
    end
  end

  # puts "Please enter a command:"
  # user_input = gets.chomp
  #
  #   if user_input == "list"
  #     list(songs)
  #   elsif user_input == "play"
  #     list(songs)
  #     play(songs)
  #   elsif user_input == "help"
  #     help
  #   elsif user_input == "exit"
  #     exit_jukebox
  #   end
end
