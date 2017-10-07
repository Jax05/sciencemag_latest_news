class SciencemagLatestNews::Story
  attr_accessor :headline, :author, :date, :content, :url

  @@latest_stories = []

  def self.latest_stories
    @@latest_stories
  end

  def self.scrape_latest_stories
    doc = Nokogiri::HTML(open("http://www.sciencemag.org/news"))

    doc.css(".subprime--a .item-list li").each do |article|
      story = self.new
      story.headline = article.css(".media__headline a").text
      story.author = article.css(".byline a").text
      story.date = article.css(".byline time").text
      story.url = article.css(".media__headline a").attribute("href").value
      story.content = self.scrape_story_content(story.url)

      self.latest_stories << story
    end
  end

  def self.scrape_story_content(url)
    doc = Nokogiri::HTML(open("http://www.sciencemag.org" + url))

    content = doc.css(".article__body > p").collect do |paragraph|
      paragraph.text
    end
  end

  def self.find(id)
    self.latest_stories[id.to_i - 1]
  end
end
