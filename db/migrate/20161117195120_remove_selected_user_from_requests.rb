class RemoveSelectedUserFromRequests < ActiveRecord::Migration[5.0]
  def change

        remove_column :requests, :selected_user
  end
end
