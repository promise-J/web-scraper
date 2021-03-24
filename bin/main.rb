

require_relative '../lib/scraper'

WEB = Scraper.new('https://www.traversymedia.com/')

def getting_started
  WEB.welcome
  puts 'Are you ready to scrape? ENTER yes or no'
  choice = gets.chomp

  until choice == 'yes'
    puts 'enter a valid choice. to scrape Enter yes or no'
    choice = gets.chomp
  end

  WEB.about
  WEB.how_to_go
  confirm
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
      puts WEB.error_input
    end
    ready = false
  end
end

re_do = true

while re_do
  getting_started
  puts 'Do you want to scrape again? choose [yes, no]'
  choice = gets.chomp

  until choice == 'yes'
    puts 'oooop!!! seem you dont want to scrape again. Lets scrape some other time.'
    re_do = false
    WEB.end_scrape
  end
  getting_started
end
