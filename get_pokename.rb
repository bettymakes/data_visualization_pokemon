require 'nokogiri'
require 'open-uri'

File.open('pokename.txt', 'w') do |words|
	url = "http://pokemondb.net/pokedex/national"
	data = Nokogiri::HTML(open(url))
	pokemon = data.css(".item")
	pokemon.each do |info|
		poke_name = info.at_css(".name").text.strip
		words.write(poke_name + ", ")
	end

end
