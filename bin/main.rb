#!/usr/bin/env ruby
require_relative '../lib/scraper'

WEB = Scraper.new('https://www.traversymedia.com/')

def getting_started
  puts WEB.welcome("You are welcomed to web scrapping. Let's scrap")
  puts 'Are you ready to scrape? ENTER yes or no'
  choice = gets.chomp

  if choice == 'yes'
    puts WEB.about('This is The Traversy Media official website.
      This consist of a whole lots of courses to learn Programming.')
    puts WEB.how_to_go("enter:
      1-- To see the list of the categories of courses availabe
      2-- To see the list of the most popular web courses
      3-- To see the list of all youtube crash courses.
      another other option would exit.
      ")
    confirm
  end
end

def confirm
  ready = true
  while ready
    puts 'Choose an option to scrape from the Traversy'
    scraper_choice = gets.chomp.to_i
    case scraper_choice
    when 1
      puts WEB.fetch_title
    when 2
      p WEB.course1
    when 3
      p WEB.course2
    else
      puts WEB.error_input('Your selection is invalid, please try again.')
    end
    ready = false
  end
  nil
end

def set_now
  re_do = true
  while re_do
    getting_started
    puts 'Do you want to scrape again? choose [yes, no]'
    choice = gets.chomp

    case choice
    when 'no'
      puts 'oooop!!! seem you dont want to scrape again. Lets scrape some other time.'
      re_do = false
      puts WEB.end_scrape('Scrape ended. Scrape again later')
      return
    when 'yes'
      getting_started
    else
      return
    end
  end
end

set_now
