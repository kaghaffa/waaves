class AddGoalsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :goals, :integer
  end
end
