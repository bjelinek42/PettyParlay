class User < ApplicationRecord
  validates :user_name, presence: true
  validates :email, presence: true

  has_many :friendships
  has_many :friends, through: :friendships
end
