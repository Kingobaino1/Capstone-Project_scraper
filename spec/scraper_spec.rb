require './lib/scraper'

describe Scraper do
  let(:scraper) { Scraper.new('mens', 'lifestyle', '-13jrmznik1zy7ok') }
  let(:url) { scraper.url }

  describe '#get_url' do
    it 'returns the path' do
      expect(scraper.get_url(url)).not_to be nil
    end
  end

  describe '#scrape' do
    it 'returns the path' do
      expect(scraper.scrape).not_to be nil
    end
  end

  describe '#product_name' do
    it 'returns array of product names' do
      expect(scraper.product_name).to be_an Array
    end
  end

  describe '#product_price' do
    it 'returns array of product prices' do
      expect(scraper.product_price).to be_an Array
    end
  end
end
