poketype_array = []

File.open("poketype.txt", "r") do |txt|
    while (line = txt.gets)
        poketype_array << [line.chomp, txt.gets]
        puts poketype_array
		end
end