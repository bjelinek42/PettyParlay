class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"
  has_many :bets_friendships
  has_many :bets, through: :bets_friendships
end
