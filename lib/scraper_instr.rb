class ScraperPlay
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def welcome(msg)
    "#{msg} #{@url}"
  end

  def about(msg)
    msg.to_s
  end

  def how_to_go(msg)
    msg.to_s
  end

  def error_input(msg)
    msg.to_s
  end

  def end_scrape(msg)
    msg
  end
end
