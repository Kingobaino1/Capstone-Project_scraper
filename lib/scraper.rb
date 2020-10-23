require 'nokogiri'
require 'httparty'

class Scraper
  attr_accessor :url, :gender, :category, :ip_address
  def initialize(gender, category)
    @gender = gender
    @category = category
    @url = "https://www.nike.com/eg/w/#{gender}-#{category}-shoes#{ip_address}"
  end
end
