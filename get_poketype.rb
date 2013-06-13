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
	water_poketype_array = Array.new
	bug_poketype_array = Array.new
	normal_poketype_array = Array.new
	poison_poketype_array = Array.new
	electric_poketype_array = Array.new
	ground_poketype_array = Array.new
	fighting_poketype_array = Array.new
	psychic_poketype_array = Array.new
	ghost_poketype_array = Array.new
	ice_poketype_array = Array.new
	dragon_poketype_array = Array.new
	steel_poketype_array = Array.new
	dark_poketype_array = Array.new
	flying_poketype_array = Array.new
	# rock_poketype_array = Array.new
	# rock_poketype_array = Array.new



	pokemon.each do |info|
		poke_type = info.at_css(".note").text.strip.gsub(/(\W.+)/, "")
		poketype_array << poke_type
	end

		poketype_array.each do |type|
			fire_poketype_array << type  if type == "Fire"
			grass_poketype_array << type  if type == "Grass"
			rock_poketype_array << type  if type == "Rock"
			water_poketype_array << type if type == "Water"
			bug_poketype_array << type if type == "Bug"
			normal_poketype_array << type if type == "Normal"
			poison_poketype_array << type if type == "Poison"
			electric_poketype_array << type if type == "Electric"
			ground_poketype_array << type if type == "Ground"
			fighting_poketype_array << type if type == "Fighting"
			psychic_poketype_array << type if type == "Psychic"
			ghost_poketype_array << type if type == "Ghost"
			ice_poketype_array << type if type == "Ice"
			dragon_poketype_array << type if type == "Dragon"
			steel_poketype_array << type if type == "Steel"
			dark_poketype_array << type if type == "Dark"
			flying_poketype_array << type if type == "Flying"
		end


	count_total 		= poketype_array.length
	count_fire 			= fire_poketype_array.length
	count_grass 		= grass_poketype_array.length
	count_rock 			= rock_poketype_array.length
	count_water 		= water_poketype_array.length
	count_bug 			= bug_poketype_array.length
	count_normal 		= normal_poketype_array.length
	count_poison 		= poison_poketype_array.length
	count_electric 	= electric_poketype_array.length
	count_ground 		= ground_poketype_array.length
	count_fighting 	= fighting_poketype_array.length
	count_pychic 		= psychic_poketype_array.length
	count_ghost 		= ghost_poketype_array.length
	count_ice 			= ice_poketype_array.length
	count_dragon 		= dragon_poketype_array.length
	count_steel 		= steel_poketype_array.length
	count_dark 			= dark_poketype_array.length
	count_flying 		= flying_poketype_array.length

