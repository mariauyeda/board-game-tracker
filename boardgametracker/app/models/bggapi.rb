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

    # p titles = request.map{|h| Game.new{h}}
   # p body.items.item.thumbnail
   body.each do |key, value|

    # print "KEY1:", key, "\n"
    # print "VALUE1:", value, "\n"
    # p value['item']
    # value.each do |key2, value2|
    #   print "KEY2:", key2, "\n"
    #   print "VALUE2:", value2, "\n"
    # end

    value['item'].each do |item|
      thumbnail = item['thumbnail']['value']
      name = item['name']['value']
      p Game.new(name: name, thumbnail: "http:#{thumbnail}", description: "Hello")
    end

  end
  end
end
