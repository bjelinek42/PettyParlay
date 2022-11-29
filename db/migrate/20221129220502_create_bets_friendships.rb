class CreateBetsFriendships < ActiveRecord::Migration[7.0]
  def change
    create_table :bets_friendships do |t|
      t.integer :bet_id
      t.integer :friendship_id

      t.timestamps
    end
  end
end
