class SciencemagLatestNews::Story
  attr_accessor :headline, :author, :date, :content, :url
# cli call needs to call a prime method that scrapes all the stories
# stories need headline, author, date, content, and url
  @@latest_stories = []

  def self.latest_stories
    @@latest_stories
  end

  def self.scrape_latest_stories
    # actually scrapes the site
    # for each listing, create a story instance, gather details & push to latest_stories
    story = SciencemagLatestNews::Story.new
    story.headline = "Bees!!"
    story.author = "G Patty"
    story.date = "October 6, 2017"
    story.content = "A story about bees."
    @@latest_stories << story
  end

  def self.find(id)
    @@latest_stories[id.to_i - 1]
  end
end
