require_relative '../lib/scraper_instr'
SCRAP = ScraperPlay.new('https://www.traversymedia.com/')

describe ScraperPlay do
  describe '#welcome' do
    it 'should return the message passed as an augument' do
      expect(SCRAP.welcome('Your selection is invalid, please try again.'))
        .to eql('Your selection is invalid, please try again. https://www.traversymedia.com/')
    end
  end
  describe '#about' do
    it 'should return the message passed as an augument' do
      msg = 'This is the Traversy Media official website. This consist of a whole lots of courses to learn programming.'
      expect(SCRAP.about(msg)).to eql(msg)
    end
  end
  describe '#how_to_go' do
    it 'should return the message passed as an augument' do
      msg = "enter:
            1-- To see the list of the categories of courses availabe
            2-- To see the list of the most popular web courses
            3-- To see the list of all youtube crash courses.
            another other option would exit."
      expect(SCRAP.how_to_go(msg)).to eql('enter:
            1-- To see the list of the categories of courses availabe
            2-- To see the list of the most popular web courses
            3-- To see the list of all youtube crash courses.
            another other option would exit.')
    end
  end
  describe '#error_input' do
    it 'should return the message passed as an augument' do
      expect(SCRAP.error_input('Your selection is invalid, please try again.'))
        .to eql('Your selection is invalid, please try again.')
    end
  end
  describe '#end_scrape' do
    it 'should return the message passed as an augument' do
      expect(SCRAP.end_scrape('Scrape ended. Scrape again later')).to eql('Scrape ended. Scrape again later')
    end
  end
end
