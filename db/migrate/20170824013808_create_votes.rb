class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :voter_id, null: false
      t.integer :restaurant_id, null: false

      t.timestamps
    end
  end
end
