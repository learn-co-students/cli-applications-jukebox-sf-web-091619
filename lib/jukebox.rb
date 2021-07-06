def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
    songs.each_with_index { |song, index| 
    puts "#{index+1}. #{song}" }
end

def play(songs)
    puts "Please enter a song name or number:"
    response = gets.strip

    if songs.include?(response)
        puts "Playing #{response}"
    elsif response.to_i != 0 && songs[response.to_i - 1]
        puts "Playing #{songs[response.to_i - 1]}"
    else
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    puts "Please enter a command:"
    command = gets.strip
    unless command == "exit"
        if command == "help"
            help
        elsif command == "list"
            list(songs)
        elsif command == "play"
            play(songs)
        elsif command == "help"
            help
        end
    end
    exit_jukebox
end