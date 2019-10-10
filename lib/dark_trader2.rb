require 'nokogiri' 
require 'rubygems'
require 'open-uri'
require 'pry'


#currency_rates = page.xpath('//*[@id="currency-exchange-rates"]').each do |currency_rate|
#puts currency_rates


page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    
crypto_names = []
    
page.xpath('//*[@id]/td[2]/a').each do |crypto_name|
    
crypto_names.push(crypto_name.text)
    
end
    
puts crypto_names











