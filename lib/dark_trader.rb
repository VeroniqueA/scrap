require 'nokogiri' 
require 'rubygems'
require 'open-uri'
require 'pry'


#currency_rates = page.xpath('//*[@id="currency-exchange-rates"]').each do |currency_rate|
#puts currency_rates



def crypto_names_method

    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
      crypto_names =[]
      page.xpath('//*[@id]/td[2]/a').each do |crypto_name|
      crypto_names.push(crypto_name.text)
    end
end

def crypto_values_method

    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
      crypto_values =[]
      page.xpath('//*[@id]/td[5]/a').each do |crypto_value|
      crypto_values.push(crypto_value.text)
    end
end

def crypto_scrapper(crypto_names, crypto_values)

  mon_hash = { crypto_names => crypto_values }
  
end

puts crypto_scrapper("BTC", 455445)





