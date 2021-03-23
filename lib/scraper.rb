require 'nokogiri'
require 'open-uri'

class Scraper
    attr_reader :url
    def initialize(url)
        @url = url
    end
    def parse_page
        html = URI.open(@url)
        page = Nokogiri::HTML(html)
    end
    def full_page
       parse_page.css('body')
    end
    def get_titles
        title_cat = []
        first = full_page.css('div#courses .col h3').text
        second = full_page.css('section#youtube .fa-youtube + h3').text
        title_cat << first
        title_cat << second
        title_cat
    end
    def courses
       full_page.css('.container-fluid .row div > span').text
    end
    
end