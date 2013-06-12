require 'nokogiri'
# gem that allows you to download the web page so we can parse it
require 'open-uri'

# url variable set to web page we are parsing/scraping
url = "http://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_National_Pok%C3%A9dex_number"

# Nokogiri object, parse HTML document (nokogiri can parse diff types of docs), open this 'url' (line 6)
data = Nokogiri::HTML(open(url))



