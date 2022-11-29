class Bet < ApplicationRecord
  has_many :bets_friendships
  has_many :friendships, through: :bets_friendships
end
