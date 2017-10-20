require 'open-uri'
require 'nokogiri'

uri = "http://ticket.interpark.com/TPGoodsList.asp?Ca=Liv"

doc = Nokogiri::HTML(open(uri))
title = Array.new

doc.css(".fw_bold").each do |x|
	title << x.inner_text
end

puts title
