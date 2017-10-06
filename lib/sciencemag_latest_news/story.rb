class SciencemagLatestNews::Story
  attr_accessor :headline, :author, :date, :content, :url

  @@latest_stories = []

  def self.latest_stories
    @@latest_stories
  end

  def self.scrape_latest_stories
    doc = Nokogiri::HTML(open("http://www.sciencemag.org/news"))

    doc.css(".subprime--a .item-list li").each do |item|
      story = self.new
      story.headline = item.css(".media__headline a").text
      story.author = item.css(".byline a").text
      story.date = item.css(".byline time").text
      story.url = item.css(".media__headline a").attribute("href").value

      self.scrape_story_content
      self.latest_stories << story
    end
  end

  def self.find(id)
    self.latest_stories[id.to_i - 1]
  end
end
