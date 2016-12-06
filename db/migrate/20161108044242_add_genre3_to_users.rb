class AddGenre3ToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :genre3, :string
  end
end
