class ScraperPlay
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def welcome
    puts "You are welcomed to web scrapping. Let's scrap #{@url}"
  end

  def about
    puts 'This is The Traversy Media official website. This consist of a whole lots of courses to learn Programming.'
  end

  def how_to_go
    puts "enter:
      1-- To see the list of the categories of courses availabe
      2-- To see the list of the most popular web courses
      3-- To see the list of all youtube crash courses.
      another other option would exit.
      "
  end

  def error_input
    puts 'Your selection is invalid, try again.'
  end

  def end_scrape
    puts 'Scrape ended. Scrap again later'
  end
end
