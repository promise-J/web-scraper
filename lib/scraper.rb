require 'nokogiri'
require 'open-uri'
require_relative './scraper_instr'

class Scraper < Scraper_play
    attr_reader :url
    public
    def initialize(url)
        @url = url
    end
    def get_titles
        title_cat = []
        first = full_page.css('div#courses .col h3').text
        second = full_page.css('section#youtube .fa-youtube + h3').text
        title_cat << first
        title_cat << second
        title_cat
    end
    def course_1
       full_page.css('.container-fluid div.row .col-md-4 .bg-black span.font-alt').text
       
    end
    def course_2
       full_page.css('section#youtube .container .col-md-6 .bg-white span').text
    end
    private
    def parse_page
        html = URI.open(@url)
        page = Nokogiri::HTML(html)
    end
    def full_page
       parse_page.css('body')
    end
end