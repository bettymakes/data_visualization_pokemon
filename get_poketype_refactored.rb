require 'nokogiri'
	file = 'pokemon-list.html'  #downloaded site to file, scraping downloaded file instead
	data = Nokogiri::HTML(open( file ))
	
	pokemon = data.css(".item")

	poke_categories = %w(fire grass rock water bug normal poison electic ground fighting 
									psychic ghost ice dragon steel dark flying)

	poke_cat_hash = {}
	poke_categories.each do |cat|
		poke_cat_hash[ cat.to_sym ] = []
	end

	# poketype_array = Array.new
	# cat_values_array = Array.new

	pokemon.each do |info|
		poke_info = info.at_css(".note").text.strip.gsub(/(\W.+)/, "")
		poketype_array << poke_info
	end

		poketype_array.each do |type|
			# data_hash[:fire] << type if type == "Fire"
			data_hash[ type.downcase.to_sym ] << type
		end

count_total = poketype_array.length
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




