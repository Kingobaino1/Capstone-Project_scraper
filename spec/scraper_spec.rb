require './lib/scraper'

describe Scraper do
  let(:scraper) { Scraper.new('mens', 'lifestyle', '-13jrmznik1zy7ok') }
  let(:url) { scraper.url }

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
