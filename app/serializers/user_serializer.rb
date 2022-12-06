class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :email, :friends, :bets

  def friends
    friends = []
    friend_list = current_user.friendships
    friend_list.each do |entry|
      friend = {}
      friend_info = User.find_by(id: entry.friend_id)
      friend[:user_name] = friend_info.user_name
      friend[:id] = friend_info.id
      friend[:email] = friend_info.email
      friends << friend
    end

    return friends
  end

  def bets
    bet_friendships = []
    friendships = Friendship.where(user_id: current_user.id)
    friendships.each do |friendship|
      bet = BetsFriendship.find_by(friendship_id: friendship.id)
      bet_friendships << bet
    end
    bets = []
    bet_friendships.each do |bet_friendship|
      if bet_friendship
        bet = Bet.find_by(id: bet_friendship.id)
        bets << bet
      end
    end
    return bets
  end 

end
