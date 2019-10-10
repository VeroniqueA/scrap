
require 'nokogiri' 
require 'rubygems'
require 'open-uri'
require 'pry'



page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

crypto_values = []
  
page.xpath('//*[@id]/td[5]/a').each do |crypto_value|
  
crypto_values.push(crypto_value.text)
  
end

puts crypto_values

