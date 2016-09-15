require 'httparty'

response = HTTParty.get('http://www.boardgamegeek.com/xmlapi2/hot?boardgame')

p response
