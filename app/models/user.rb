class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  has_many :libraries
  has_many :games, through: :libraries
  has_many :comments
  has_many :friends, through: :relationships, source: :friend
  has_many :relationships, foreign_key: :user_id, class_name: "Relationship"
end
