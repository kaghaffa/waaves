class AddSelectedUserToRequests < ActiveRecord::Migration[5.0]
  def change
  add_column :requests, :selected_user, :integer

  end
end
