# Add your code here
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
 puts "I accept the following commands:"
 puts "- help : displays this help message"
 puts "- list : displays a list of songs you can play"
 puts "- play : lets you choose a song to play"
 puts "- exit : exits this program"
end

def list(song_list)
  song_list.each_with_index do |song, index|
  puts "#{index+1}. #{song}"
  end
end


def play(songs)
 puts "Please enter a song name or number:"
 input = gets.chomp
 my_song_index = input.to_i
   if (1..9).include?(my_song_index)
     puts "Playing #{songs[my_song_index - 1]}"
   elsif my_song_index == 0
     now_playing = songs.select { |song| song.include?(input) }[0]
     if now_playing == nil
       puts "Invalid input, please try again"
     else
       puts "Playing #{now_playing}"
     end
   else
     puts "Invalid input, please try again"
   end
 end


def exit_jukebox
  puts "Goodbye"
end


def run(my_songs)
  puts "Please enter a command:"
  input = gets.chomp
    case input
      when "help"
        help
        puts "Please enter a command:"
        input = gets.chomp
      when "list"
        list(my_songs)
        puts "Please enter a command:"
        input = gets.chomp
      when "play"
        play(my_songs)
        puts "Please enter a command:"
        input = gets.chomp
      when "exit"
        exit_jukebox
      else
        puts "Invalid input, please try again:"
        input = gets.chomp
      end
    end
