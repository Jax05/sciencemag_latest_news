class SciencemagLatestNews::CLI

  def call
    greeting
    list
    menu
  end

  def greeting
    puts "Welcome to ScienceMag Latest News!"
  end

  def list
    # need to list all the story headlines here
    # use each.with_index(1) on collection of all stories
    # like @stories = Story.all, @stories.each.with_index(1) blah blah
    puts "1. Bees"
    puts "2. Volcano"
  end

  def menu
    input = nil

    while input != "exit"
      puts "Type the number of the story you'd like to read. You can also type 'list' to see the stories again or 'exit' to exit."
      input = gets.chomp

      # need to check that input is correct - more than 0 but less than
      # total num of stories
      # could use a find method here and pass in input, story = Story.find(i)
      # then puts story.headline, story.author | story.date, story.content
      case input
      when "1" then puts "Here's more info on bees."
      when "2" then puts "Here's more info on volcano stuff."
      when "list" then list
      else "I don't know what you want to do. Type 'list' or 'exit'."
      end
    end
  end

end
