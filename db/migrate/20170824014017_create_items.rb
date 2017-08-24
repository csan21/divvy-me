class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :meal, null: false

      t.timestamps
    end
  end
end
