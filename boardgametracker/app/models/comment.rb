class Comment < ApplicationRecord
  acts_as_votable

	belongs_to :user
	belongs_to :game

  def tally
    self.get_likes.size - self.get_dislikes.size
  end
end
