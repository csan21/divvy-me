class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.integer :creator_id, null: false
      t.boolean :optional, default: true, null: false

      t.timestamps
    end
  end
end
