class SciencemagLatestNews::CLI

  def call
    SciencemagLatestNews::Story.scrape_latest_stories
    greeting
    list
    menu
  end

  def greeting
    puts "Welcome to ScienceMag Latest News!"
  end

  def list
    @stories = SciencemagLatestNews::Story.latest_stories
    @stories.each.with_index(1) do |story, i|
      puts "#{i}. #{story.headline}"
    end
  end

  def menu
    input = nil

    while input != "exit"
      puts "Type the number of the story you'd like to read. You can also type 'list' to see the stories again or 'exit' to exit."
      input = gets.chomp

      if input.to_i > 0 && input.to_i <= SciencemagLatestNews::Story.latest_stories.size
        story = SciencemagLatestNews::Story.find(input)
        puts "#{story.headline}"
        puts "#{story.author} | #{story.date}"
        puts "#{story.content.join("\n")}"
      elsif input == "list"
        list
      elsif input == "exit"
        exit
      else
        puts "Please choose one of the options listed."
      end
    end
  end

end
