# Add your code here
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

def list(array)
  array.length.times do |i|
    puts "#{i+1}. #{array[i]}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  user_song = gets.strip
  array.length.times do |i|
    if user_song == array[i]
      puts "Playing #{array[i]}"
      return
    elsif user_song.to_i == i + 1
      puts "Playing #{array[i]}"
      return
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  puts "Please enter a command:"
  user_input = gets.strip
  # while user_input != "exit"
    if user_input == "help"
      help
      run(array)
    elsif user_input == "list"
      list(array)
      run(array)
    elsif user_input == "play"
      play(array)
      run(array)
    elsif user_input == "exit"
      exit_jukebox
    else
      puts "Invalid command."
      puts "I accept the following commands:"
      puts "- help : displays this help message"
      puts "- list : displays a list of songs you can play"
      puts "- play : lets you choose a song to play"
      puts "- exit : exits this program"
      run(array)
    end
  # end
  # exit_jukebox
end


