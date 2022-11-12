class AddMoreFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :bio, :text
    add_column :users, :phone, :bigint
    add_column :users, :street, :string
    add_column :users, :city, :string
    add_column :users, :country, :string, :default => "India"
  end
end
