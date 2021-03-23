#!/usr/bin/env ruby

require_relative '../lib/scraper'

puts Scraper.new('https://www.traversymedia.com/').courses


# net = URI.open('https://thenationonlineng.net')

# doc = Nokogiri::HTML(net)

# doc.css('.jeg_postblock_content h3 a').each do |link|
#   p link.inner_text
# end
