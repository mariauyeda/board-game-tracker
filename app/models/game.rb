class Game < ApplicationRecord
  acts_as_votable

	has_many :comments
	has_many :libraries
	has_many :users, through: :libraries
	has_many :gametags
	has_many :tags, through: :gametags

  def tally
    self.get_likes.size - self.get_dislikes.size
  end
end
