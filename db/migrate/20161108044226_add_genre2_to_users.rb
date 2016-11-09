class AddGenre2ToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :genre2, :string
  end
end
