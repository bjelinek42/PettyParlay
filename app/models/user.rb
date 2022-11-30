class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :user_name, presence: true, uniqueness: true
  validates :email, presence: true

  has_many :friendships
  has_many :friends, through: :friendships

  def self.new_user(params)
    user = User.new(
      user_name: params[:user_name],
      email: params[:email],
      password: params[:password]
    )
    return user
  end
end
