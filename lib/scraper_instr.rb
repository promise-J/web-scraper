class Scraper_play
    attr_reader :url
    def initialize(url)
      @url = url
    end
    def welcome
        puts "You are welcomed to web scrapping. Let's scrap #{@url}"
    end
    
end