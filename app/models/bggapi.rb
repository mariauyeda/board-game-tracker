class Bggapi < ApplicationRecord
  require 'httparty'

  # def game_description(bggid)
  #   p HTTParty.get("http://www.boardgamegeek.com/xmlapi2/thing?id=#{bggid}&marketplace=1")
  # end

  def hotlist
    return HTTParty.get('http://www.boardgamegeek.com/xmlapi2/hot?boardgame')
  end

  # Not returning search item, need to debug
  def search_title(boardgame)
    return HTTParty.get("http://www.boardgamegeek.com/xmlapi2/search?#{boardgame}")
  end

  def game_title
    data = HTTParty.get('http://www.boardgamegeek.com/xmlapi2/hot?boardgame')
    body = data.parsed_response
    body.each do |key, value|

    all_games = Array.new
    value['item'].first(19).each do |item|
      thumbnail = item['thumbnail']['value']
      name = item['name']['value']
      bggid = item['id']
      des = descriptions(bggid)
      all_games.push(Game.create(bggid: bggid, name: name, thumbnail: "http:#{thumbnail}", description: des))

    end
      return all_games
    end
  end

  def descriptions(bggid)
    descript = Array.new
    descriptions_body = HTTParty.get("http://www.boardgamegeek.com/xmlapi2/thing?id=#{bggid}&marketplace=1")
    p body = descriptions_body.parsed_response
    p "*" * 20
    body.each do |key, value|
    descript.push(value["item"]["description"])
    end
    return descript
  end

end
