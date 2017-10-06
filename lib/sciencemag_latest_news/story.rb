class SciencemagLatestNews::Story
# cli call needs to call a prime method that scrapes all the stories
# stories need headline, author, date, content, and url
  def self.latest_stories
    # contains latest_stories array
    # find method can look here
  end

  def self.scrape_latest_stories
    # actually scrapes the site
    # for each listing, create a story instance, gather details & push to latest_stories
  end

  def self.find(id)
    # needs to look in stories array
  end
end
