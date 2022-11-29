class BetsFriendship < ApplicationRecord
  belongs_to :bet
  belongs_to :friendship
end
