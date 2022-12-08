class FriendshipsController < ApplicationController

  def index
    friendships = Friendship.where(user_id: params[:user_id])
    render json: friendships
  end

  def show

  end

  def create
    friendship = Friendship.new_friendship(params, current_user.id)
    if friendship.save
      render json: { message: "You are now friends" }, status: :created
    else
      render json: { errors: friendship.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    friendship = Friendship.find_by(id: params[:id])
    if friendship.destroy
      render json: { message: "You are nolonger friends" }, status: :created
    else
      render json: { errors: friendship.errors.full_messages }, status: :bad_request
    end
  end


end
