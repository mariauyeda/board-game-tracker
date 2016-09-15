class Game < ApplicationRecord
	has_many :comments
	has_many :libraries
	has_many :users, through: :libraries
	has_many :gametags
	has_many :tags, through: :gametags
end
