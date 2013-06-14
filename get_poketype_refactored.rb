require 'nokogiri'
	file = 'pokemon-list.html'  #downloaded site to file, scraping downloaded file instead
	data = Nokogiri::HTML(open( file ))
	File.open('poke_page.html', 'w') do |html|

	pokemon = data.css(".item")

	poke_categories = %w(fire grass rock water bug normal poison electric ground fighting 
									psychic ghost ice dragon steel dark flying)

	poke_cat_hash = {}
	poke_categories.each do |cat|
		poke_cat_hash[ cat.to_sym ] = []
	end

	poketype_array = Array.new
	# cat_values_array = Array.new

	pokemon.each do |info|
		poke_info = info.at_css(".note").text.strip.gsub(/(\W.+)/, "")
		poketype_array << poke_info
	end
	poketype_total = poketype_array.length

		poketype_array.each do |type|
			# data_hash[:fire] << type if type == "Fire"
			poke_cat_hash[ type.downcase.to_sym ] << type
		end

		poke_cat_hash.each_pair do |key, value|
			# count the number of words in the values array = "counted_values"
			# replace  arrayof values with "counted_values" 
			# we'll need to refer the "counted_values" back to the key in the hash

			# poke_cat_hash[key] = [value_array.length]
			poke_cat_hash[key]  = value.length
			end

			poke_cat_hash.each_pair do |key, value|
			div_height = ((value.to_f / poketype_total.to_f)*100)
			
			html.write("<div class='bar_default'>\n")
			html.write("	<div class='bar_filled_highlight' style='height: " + div_height.to_s + "%;'>\n")
										#<div class="bar-filled highlight" style="height: 100%"></div>
			html.write("	<div class='bar_title'>" + key.upcase.to_s + "</div>\n")
			html.write("	</div>\n")
			html.write("</div>\n")
			html.write("\n")
	end
end



