class Tag < ApplicationRecord
	has_many :gametags
	has_many :games, through: :gametags
end
