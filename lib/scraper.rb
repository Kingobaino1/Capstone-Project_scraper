require 'nokogiri'
require 'httparty'

class Scraper
  attr_accessor :url, :gender, :category, :ip_address
  def initialize(gender, category)
    @gender = gender
    @category = category
    @url = "https://www.nike.com/eg/w/#{gender}-#{category}-shoes#{ip_address}"
  end

  def get_url(url)
    unparsed_page = HTTParty.get(url)
    Nokogiri::HTML(unparsed_page)
  end

  def parse_url
    get_url(@url)
  end

  def scrape
    product_items = parse_url.css('.product-grid__items').css('.product-card')
    product_items.css('div.product-card__body').css('figure')
  end

  def product_name
    scrape.css('div.product-card__title').map{ |num| num.text }
  end
end
