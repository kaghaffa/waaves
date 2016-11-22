class RemoveRequesterIdFromSelectedUsers < ActiveRecord::Migration[5.0]
  def change
            remove_column :selectedusers, :requester_id
  end
end
