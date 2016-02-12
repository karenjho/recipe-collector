# Require nokogiri gem for HTML/XML parsing and selection
require 'nokogiri'
# Require open-uri to access HTML/XML pages
require 'open-uri'

# Access the target URL for scraping
doc = Nokogiri::HTML(open("http://allrecipes.com/recipe/20082/artichoke-spinach-lasagna/"))

# Retrieve the recipe name
name = doc.xpath("//section[contains(@class,'recipe-summary')]/h1/text()").first.text.strip
# Retrieve the ingredients (array)
ingredients = doc.xpath("//span[contains(@class,'recipe-ingred_txt')]/text()").collect {|node| node.text.strip}
# Retrieve the preparation steps (array)
prep_steps = doc.xpath("//span[contains(@class,'recipe-directions__list--item')]/text()").collect {|node| node.text.strip}
# Retrieve the yield count
yield_count = doc.xpath("//meta[contains(@id,'metaRecipeServings')]/@content").text.strip


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
puts ""
puts "Yield: " + yield_count
