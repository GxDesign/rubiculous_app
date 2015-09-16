require 'json'
require 'open-uri'
require 'pry'  
require 'sinatra'
require './models/card'


get '/' do 
erb :initial
end

get '/begin' do 
	@card = Card.new
	case @card.suit.downcase
    when 'diamonds'
    @suit = "<div class=\"suit\" style=\"color:red\">&#9830;</div>"
    @color = "red"
    when 'hearts'
    @suit = "<div class=\"suit\" style=\"color:red\">&#9829;</div>"
    @color = "red"
    when 'clubs'
    @suit = "<div class=\"suit\">&#9827;</div>"
    @color = "black"
    when 'spades'
    @suit = "<div class=\"suit\">&#9824;</div>"
    @color = "black"
    end
    @suit
	@card = Card.new
	erb :performance
end


