class CreateSmacks < ActiveRecord::Migration
  def change
    create_table :smacks do |t|
      t.string :title
      t.string :description
      t.integer :category_id
      t.integer :user_id

      t.timestamps(null: false)
    end
  end
end
