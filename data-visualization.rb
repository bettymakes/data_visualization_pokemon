require 'nokogiri'
# gem that allows you to download the web page so we can parse it
require 'open-uri'

# url variable set to web page we are parsing/scraping
url = "http://pokemondb.net/pokedex/national"

# Nokogiri object, parse HTML document (nokogiri can parse diff types of docs), open this 'url' (line 6)
data = Nokogiri::HTML(open(url))

# puts data

pokemon = data.css(".item")

pokemon.each do |info|
	poke_name = info.at_css(".name")
	  puts "Name: " + poke_name.text.strip
	poke_type = info.at_css(".note")
		puts "Type: " + poke_type.text.strip
end




# require 'nokogiri'
# require 'open-uri'

# url = "http://toronto.en.craigslist.ca/apa/"
# data = Nokogiri::HTML(open(url))
# listings = data.css(".row")
# listings.each do |item|
 

# description = item.at_css(".pl")
# if !description.nil?
#   puts "Description: " + description.text.strip
# else
#   puts "Description: N/A"
# end