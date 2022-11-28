class CreateAntagonists < ActiveRecord::Migration[7.0]
  def change
    create_table :friendship do |t|
      t.references :user, null: false, foreign_key: true
      t.references :friends, reference: :users, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
