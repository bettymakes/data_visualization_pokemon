require 'nokogiri'
# gem that allows you to download the web page so we can parse it
# require 'open-uri'     ... removed open uri because we are no longer scraping off of a website 

	# url variable set to web page we are parsing/scraping
	# url = "http://pokemondb.net/pokedex/national"
	file = 'pokemon-list.html'  #downloaded site to file, scraping downloaded file instead

	# Nokogiri object, parse HTML document (nokogiri can parse diff types of docs), open this 'url' (line 6)
	data = Nokogiri::HTML(open( file ))

	pokemon = data.css(".item")
	poketype_array = Array.new

	#new set of category arrays
	fire_poketype_array = Array.new
	grass_poketype_array = Array.new
	rock_poketype_array = Array.new
	
	pokemon.each do |info|
		poke_type = info.at_css(".note").text.strip.gsub(/(\W.+)/, "")
		poketype_array << poke_type
	end

		poketype_array.each do |type|
			fire_poketype_array << type  if type == "Fire"
			grass_poketype_array << type  if type == "Grass"
			rock_poketype_array << type  if type == "Rock"
				
		end

	# count = poketype_array.length
	# p count

	# p fire_poketype_array
	# count = fire_poketype_array.length
	# p count

	# count2 = grass_poketype_array.length
	# p count2

	# count3 = rock_poketype_array.length
	# p count3