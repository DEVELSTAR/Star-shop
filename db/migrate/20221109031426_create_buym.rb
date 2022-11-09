class CreateBuym < ActiveRecord::Migration[7.0]
  def change
    create_table :buyms do |t|
      t.string :title
      t.string :brand
      t.integer :price
      t.string :ram
      t.string :storage
      t.string :delivery
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
