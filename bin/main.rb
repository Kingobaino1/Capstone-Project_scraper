require './lib/scraper.rb'

scrape_m_style = Scraper.new('mens', 'lifestyle', '-13jrmznik1zy7ok')
scrape_m_foot = Scraper.new('mens', 'football', '-1gdj0znik1zy7ok')
scrape_w_style = Scraper.new('womens', 'lifestyle', '-13jrmz5e1x6zy7ok')
scrape_w_foot = Scraper.new('womens', 'football', '-1gdj0z5e1x6zy7ok')
get_result = Output.new

puts 'Select the gender (by the number) you want to check'
puts '1. Men shoe'
puts '2. Women shoe'
gender = gets.chomp.to_i
while get_result.valid_input(gender)
  puts 'Invalid input'
  gender = gets.chomp.to_i
end

puts 'Select the category (by the number) you want to check'
puts '1. LifeStyle'
puts '2. Football'
category = gets.chomp.to_i
while get_result.valid_input(category)
  puts 'Invalid input'
  category = gets.chomp.to_i
end
puts 'Wait while we fetch the data'

if gender == 1 && category == 1
  get_result.output(scrape_m_style.product_name, scrape_m_style.product_price)
elsif gender == 1 && category == 2
  get_result.output(scrape_m_foot.product_name, scrape_m_foot.product_price)
elsif gender == 2 && category == 1
  get_result.output(scrape_w_style.product_name, scrape_w_style.product_price)
elsif gender == 2 && category == 2
  get_result.output(scrape_w_foot.product_name, scrape_w_foot.product_price)
end
