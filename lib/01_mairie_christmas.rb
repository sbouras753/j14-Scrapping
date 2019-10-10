require 'rubygems'
require 'nokogiri'
require 'open-uri'

$page =Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))

city = Array.new
#mail = Array.new
#city_mail_hash = Hash.new

def get_townhall_email(city)
$page.xpath('//a[@class ="lientxt"]').each do |noeud|
    city<<noeud.text
    end 
    return city
end
p get_townhall_email(city)

