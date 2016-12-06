class AddExperienceToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :experience, :integer
  end
end
