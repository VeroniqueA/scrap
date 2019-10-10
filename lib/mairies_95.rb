require 'nokogiri' 
require 'rubygems'
require 'open-uri'
require 'pry'




PAGE_URL = "http://annuaire-des-mairies.com/val-d-oise.html"

page = Nokogiri::HTML(open(PAGE_URL))



city_names = page.xpath('//a').each do |link|

end 

puts city_names