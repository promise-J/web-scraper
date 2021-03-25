require_relative '../lib/scraper'
require 'nokogiri'
require 'open-uri'

WEB = Scraper.new('https://www.traversymedia.com/')

describe Scraper do
  describe '#fetch_title' do
    it 'should fetch the two categories of learning in the traversy media sites' do
      expect(WEB.fetch_title).to eql(['Popular Udemy Courses | Discount Code [MARCH2021]', 'YouTube Crash Courses'])
    end
  end

  describe '#course1' do
    it 'should return the list of all the Popular Udemy Courses available in the traversy media sites' do
      msg1 = 'Modern HTML & CSS From The Beginning50 Projects In 50 DaysReact'
      msg2 = 'Front To BackBootstrap From ScratchElectron From ScratchMERN Front To Back'
      expect(WEB.course1).to eql("#{msg1} #{msg2}")
    end
  end

  describe '#course2' do
    it 'Should return the list of the courses from the from the youtube crash courses.' do
      expect(WEB.course2).to eql((Nokogiri::HTML(URI.parse('https://www.traversymedia.com/').open))
      .css('section#youtube .container .col-md-6 .bg-white span').text.gsub(
        "\n", ''
      ))
    end
  end
end
