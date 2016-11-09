class AddSimilarToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :similar, :string
  end
end
