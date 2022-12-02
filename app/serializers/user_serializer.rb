class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :email, :friends

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

end
