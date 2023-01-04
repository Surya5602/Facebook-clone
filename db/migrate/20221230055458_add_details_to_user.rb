class AddDetailsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :date, :integer
    add_column :users, :month, :string
    add_column :users, :year, :integer
    add_column :users, :gender, :string
  end
end
