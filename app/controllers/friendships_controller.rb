class FriendshipsController < ApplicationController

  def index
    friendships = Friendship.where(user_id: params[:user_id])
    render json: friendships
  end

end
