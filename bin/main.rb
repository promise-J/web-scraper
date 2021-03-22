#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'

net = URI.open('https://thenationonlineng.net')

doc = Nokogiri::HTML(net)

doc.css('.jeg_block_container .jeg_posts_wrap .jeg_posts article .jeg_postblock_content h3 a').each do |link|
  p link.inner_text
end
