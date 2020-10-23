# frozen_string_literal: true

require 'nokogiri'
require 'httparty'

# scraper class
class Scraper
  attr_reader :url, :gender, :category, :ip_address
  def initialize(gender, category, ip_address)
    @gender = gender
    @category = category
    @ip_address = ip_address
    @url = "https://www.nike.com/eg/w/#{gender}-#{category}-shoes#{ip_address}"
    @my_proc = proc { |num| num.text }
  end

  def get_url(url)
    unparsed_page = HTTParty.get(url)
    Nokogiri::HTML(unparsed_page)
  end

  private

  def parse_url
    get_url(@url)
  end

  public

  def scrape
    product_items = parse_url.css('.product-grid__items').css('.product-card')
    product_items.css('div.product-card__body').css('figure')
  end

  def product_name
    scrape.css('div.product-card__title').map(&@my_proc)
  end

  def product_price
    scrape.css('div.product-price').map(&@my_proc)
  end
end
