require 'nokogiri'
# gem that allows you to download the web page so we can parse it
# require 'open-uri'     ... removed open uri because we are no longer scraping off of a website 

	# url variable set to web page we are parsing/scraping
	# url = "http://pokemondb.net/pokedex/national"
	file = 'pokemon-list.html'  #downloaded site to file, scraping downloaded file instead

	# Nokogiri object, parse HTML document (nokogiri can parse diff types of docs), open this 'url' (line 6)
	data = Nokogiri::HTML(open( file ))

	data_hash = { :fire => ['fire', 'fire', 'fire' ]}

	data_hash{ :fire => ['fire', 'fire', 'fire' ] }
	
	data_hash[ :fire ] = ['fire', 'fire', 'fire' ]

	poke_types = %w(fire grass rock water bug normal poison electic ground fighting psychic ghost ice dragon steel dark flying)

	data_hash[categories[0].to_sym]

	categories.each do |cat|
		data_hash[ cat.to_sym ] = []
	end


	pokemon = data.css(".item")
	poketype_array = Array.new
	cat_values_array = Array.new

	#new set of category arrays
	# fire_poketype_array = Array.new
	# grass_poketype_array = Array.new
	# rock_poketype_array = Array.new
	# water_poketype_array = Array.new
	# bug_poketype_array = Array.new
	# normal_poketype_array = Array.new
	# poison_poketype_array = Array.new
	# electric_poketype_array = Array.new
	# ground_poketype_array = Array.new
	# fighting_poketype_array = Array.new
	# psychic_poketype_array = Array.new
	# ghost_poketype_array = Array.new
	# ice_poketype_array = Array.new
	# dragon_poketype_array = Array.new
	# steel_poketype_array = Array.new
	# dark_poketype_array = Array.new
	# flying_poketype_array = Array.new



	pokemon.each do |info|
		poke_info = info.at_css(".note").text.strip.gsub(/(\W.+)/, "")
		poketype_array << poke_type_info
	end

		poketype_array.each do |type|
			# data_hash[:fire] << type if type == "Fire"
			data_hash[ type.downcase.to_sym ] << type


			# fire_poketype_array << type  if type == "Fire"
			# grass_poketype_array << type  if type == "Grass"
			# rock_poketype_array << type  if type == "Rock"
			# water_poketype_array << type if type == "Water"
			# bug_poketype_array << type if type == "Bug"
			# normal_poketype_array << type if type == "Normal"
			# poison_poketype_array << type if type == "Poison"
			# electric_poketype_array << type if type == "Electric"
			# ground_poketype_array << type if type == "Ground"
			# fighting_poketype_array << type if type == "Fighting"
			# psychic_poketype_array << type if type == "Psychic"
			# ghost_poketype_array << type if type == "Ghost"
			# ice_poketype_array << type if type == "Ice"
			# dragon_poketype_array << type if type == "Dragon"
			# steel_poketype_array << type if type == "Steel"
			# dark_poketype_array << type if type == "Dark"
			# flying_poketype_array << type if type == "Flying"
		end

count_total 		= poketype_array.length
cat_values_array <<		count_fire 			= fire_poketype_array.length
cat_values_array <<		count_grass 		= grass_poketype_array.length
cat_values_array <<		count_rock 			= rock_poketype_array.length
cat_values_array <<		count_water 		= water_poketype_array.length
cat_values_array <<		count_bug 			= bug_poketype_array.length
cat_values_array <<		count_normal 		= normal_poketype_array.length
cat_values_array <<		count_poison 		= poison_poketype_array.length
cat_values_array <<		count_electric 	= electric_poketype_array.length
cat_values_array <<		count_ground 		= ground_poketype_array.length
cat_values_array <<		count_fighting 	= fighting_poketype_array.length
cat_values_array <<		count_pychic 		= psychic_poketype_array.length
cat_values_array <<		count_ghost 		= ghost_poketype_array.length
cat_values_array <<		count_ice 			= ice_poketype_array.length
cat_values_array <<		count_dragon 		= dragon_poketype_array.length
cat_values_array <<		count_steel 		= steel_poketype_array.length
cat_values_array <<		count_dark 			= dark_poketype_array.length
cat_values_array <<		count_flying 		= flying_poketype_array.length

data_hash = 



File.open('poke_page.html', 'w') do |html|
	for i in 0..16 do
	div_width = (count_type_array / count_total)*100

	html.write("<div class="bar-default">")
	html.write("	<div class='bar-filled highlight' style='width:' + div_width + '%;' >\n")
								#<div class="bar-filled highlight" style="width: 100%"></div>
	html.write("<div class="bar-title">___variable____</div>")
	html.write("</div>")
	html.write("</div>")
end




