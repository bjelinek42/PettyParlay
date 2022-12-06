class Bet < ApplicationRecord
  has_many :bets_friendships
  has_many :friendships, through: :bets_friendships

  def self.new_bet(params)
    bet = Bet.create(
      title: params[:title],
      description: params[:description],
      wager_item: params[:wager_item],
      wager_amount: params[:wager_amount],
      paid: false,
    )
  end

end
