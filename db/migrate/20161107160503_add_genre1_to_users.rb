class AddGenre1ToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :genre1, :string
  end
end
