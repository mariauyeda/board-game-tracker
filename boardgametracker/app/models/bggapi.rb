class Bggapi < ApplicationRecord
  require 'httparty'

  def hotlist
    return HTTParty.get('http://www.boardgamegeek.com/xmlapi2/hot?boardgame')
  end

  def search_title(boardgame)
    return HTTParty.get("http://www.boardgamegeek.com/xmlapi2/search?#{boardgame}")
  end

  def game_title
    data = HTTParty.get('http://www.boardgamegeek.com/xmlapi2/hot?boardgame')
    body = data.parsed_response
    body.each do |key, value|

    all_games = Array.new
    value['item'].each do |item|
      thumbnail = item['thumbnail']['value']
      name = item['name']['value']
      all_games.push(Game.create(name: name, thumbnail: "http:#{thumbnail}", description: "Hello"))

    end
      return all_games
    end
  end
end
