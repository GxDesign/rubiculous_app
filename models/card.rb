require 'json'
require 'pry'
require 'open-uri'
require 'nokogiri'

class Card

	def intialize
	  	 get_data
	end

	def get_data
	  	 @url = "https://rubiculous.herokuapp.com/form"
	  	 @cards_url = open(@url).read
	  	 @rubiculous = Nokogiri::HTML(@cards_url)
	end

	def participant 
		@rubiculous = get_data
		@participant = @rubiculous.css("tr td")[0].text
	end

	def value 
		@rubiculous = get_data
		@participant = @rubiculous.css("tr td")[1].text
	end

	def suit
	    @rubiculous = get_data 
		@participant = @rubiculous.css("tr td")[2].text
	end

end
