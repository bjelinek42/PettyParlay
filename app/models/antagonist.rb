class Antagonist < ApplicationRecord
  belongs_to :user
  belongs_to :adversary, class_name: "User"
end
