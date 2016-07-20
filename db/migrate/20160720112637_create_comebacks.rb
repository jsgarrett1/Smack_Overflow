class CreateComebacks < ActiveRecord::Migration
  def change
    create_table :comebacks do |t|
      t.string :description
      t.boolean :is_best
      t.integer :smack_id
      t.integer :user_id

      t.timestamps(null: false)
    end
  end
end
