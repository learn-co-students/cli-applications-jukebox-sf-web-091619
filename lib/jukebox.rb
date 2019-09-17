def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  end
  
  def list (songs)
    songs.each_with_index do |song, index|
      puts "#{index+1}. #{song}"
    end
  end
  
  def play (songs)
       puts "Please enter a song name or number:"
       user_song = gets.strip
      if songs.include?(user_song)
          puts "Playing #{user_song}"
      elsif  songs[(user_song.to_i) - 1] && user_song.to_i !=0
          puts "Playing #{songs[(user_song.to_i) - 1]}"
    else
        puts "Invalid input, please try again"
      end
  end
  
  def exit_jukebox 
      puts "Goodbye"
  end
  
  def run(songs)
    puts "Please enter a command:"
    input = gets.strip
    while input != "exit" do
      if input == "help"
        return help
      elsif input == "list"
        return list(songs)
      elsif input == "play"
        return play(songs)
    end
  end
    exit_jukebox
  end
    
