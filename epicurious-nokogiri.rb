# Require nokogiri gem for HTML/XML parsing and selection
require 'nokogiri'
# Require open-uri to access HTML/XML pages
require 'open-uri'

# Access the target URL for scraping
doc = Nokogiri::HTML(open("http://www.epicurious.com/recipes/food/views/southern-red-velvet-cake-375364"))

# Retrieve the recipe name
name = doc.xpath("//div[contains(@class,'title-source')]/h1/text()").first.text.strip
# Retrieve the ingredients (array)
ingredients = doc.xpath("//li[contains(@class,'ingredient')]/text()").collect {|node| node.text.strip}
# Retrive the preparation steps (array)
prep_steps = doc.xpath("//li[contains(@class,'preparation-step')]/text()").collect {|node| node.text.strip}

# Recipe test
puts name.upcase
puts ""
puts "Ingredients".upcase
puts ""
ingredients.each do |ingred|
  puts ingred
end
puts ""
puts "Preparation".upcase
puts ""
prep_steps.each do |step|
  puts step
  puts ""
end
