require 'rubygems'
require 'nokogiri'
require 'open-uri'

$page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

coin = Array.new
price = Array.new
coin_hash = Hash.new

#class_coin = '//a[@class = "currency-name-container link-secondary"]'
#class_price = '//a[@class = "price"]'

def coin_tab (coin)
    $page.xpath('//a[@class = "currency-name-container link-secondary"]').each do |noeud|
        coin << noeud.text
    end 
    return coin
end

def price_tab (price)
    $page.xpath('//a[@class = "price"]').each do |noeud|
        price.<< noeud.text
    end
    return price
end


tab1 = Array.new
tab1 = Array.new

def zip_tap (tab1, tab2)
    return hash = Hash[tab1.zip(tab2)]
end
puts zip_tap(coin_tab(coin), price_tab(price))