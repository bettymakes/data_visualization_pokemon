require 'nokogiri'
# gem that allows you to download the web page so we can parse it
require 'open-uri'


File.open('poketype.txt', 'w') do |words|

	# url variable set to web page we are parsing/scraping
	url = "http://pokemondb.net/pokedex/national"

	# Nokogiri object, parse HTML document (nokogiri can parse diff types of docs), open this 'url' (line 6)
	data = Nokogiri::HTML(open(url))

	pokemon = data.css(".item")

	pokemon.each do |info|
		# poke_name = info.at_css(".name").text.strip
		poke_type = info.at_css(".note").text.strip.gsub(/(\W.+)/, "")
		words.write(poke_type + ", ")
	end

end
