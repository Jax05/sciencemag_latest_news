class SciencemagLatestNews::CLI

  def call
    greeting
    list
    menu
  end

  def greeting
    puts "Here's the latest science news!"
  end

  def list
    puts "1. Bees"
    puts "2. Volcano"
  end

  def menu
    input = nil
    # binding.pry
    while input != "exit"
      puts "Type the number of the story you'd like to read. You can also type 'list' to see the stories again or 'exit' to exit."
      input = gets.chomp

      case input
      when "1" then puts "Here's more info on bees."
      when "2" then puts "Here's more info on volcano stuff."
        when "list" then list
        else "I don't know what you want to do. Type 'list' or 'exit'."
      end
    end
  end

end
