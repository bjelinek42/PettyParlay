class CreateBets < ActiveRecord::Migration[7.0]
  def change
    create_table :bets do |t|
      t.string :title
      t.string :description
      t.string :wager_item
      t.integer :wager_amount
      t.integer :winner
      t.boolean :paid

      t.timestamps
    end
  end
end
