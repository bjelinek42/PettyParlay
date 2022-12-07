class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"
  has_many :bets_friendships
  has_many :bets, through: :bets_friendships

  def self.new_friendship(params, current_user_id)
    friendship = Friendship.new(
      user_id: current_user_id,
      friend_id: params[:friend_id]
    )
    return friendship
  end

end
