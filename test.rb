# encoding: UTF-8

test = "Rock · Flying"
puts test.gsub(/(\W.+)/, " Lobster")


res = "Grass, Grass, Grass, Fire, Fire, Fire, Water, Water, Water, Bug, Bug, Bug, Bug, Bug, Bug, Normal, Normal, Normal, Normal, Normal, Normal, Normal, Poison, Poison, Electric, Electric, Ground, Ground, Poison, Poison, Poison, Poison, Poison, Poison, Normal, Normal, Fire, Fire, Normal, Normal, Poison, Poison, Grass, Grass, Grass, Bug, Bug, Bug, Bug, Ground, Ground, Normal, Normal, Water, Water, Fighting, Fighting, Fire, Fire, Water, Water, Water, Psychic, Psychic, Psychic, Fighting, Fighting, Fighting, Grass, Grass, Grass, Water, Water, Rock, Rock, Rock, Fire, Fire, Water, Water, Electric, Electric, Normal, Normal, Normal, Water, "

word = "ELLOWORLD"
p word.split("")

res = res.split(", ")
p res
res.each do |i|
	# puts i
end
