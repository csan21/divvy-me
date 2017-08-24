class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :username, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
