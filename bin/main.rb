#!/usr/bin/env ruby

require_relative '../lib/scraper'

web = Scraper.new('https://www.traversymedia.com/')

puts web.welcome

man = gets.chomp
webb = web.course_1

puts man + webb
