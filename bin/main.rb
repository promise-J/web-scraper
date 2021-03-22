require 'nokogiri'
require 'open-uri'

net = URI.open('https://traversymedia.com')

p doc = Nokogiri::HTML(net)


