class User < ApplicationRecord
  validates :user_name, presence: true
  validates :email, presence: true

  has_many :antagonists
  has_many :adversaries, through: :antagonists
end
