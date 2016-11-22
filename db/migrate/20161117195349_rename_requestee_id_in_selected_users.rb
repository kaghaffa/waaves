class RenameRequesteeIdInSelectedUsers < ActiveRecord::Migration[5.0]
  def change
     rename_column :selectedusers, :requestee_id, :selected_user_id
  end
end
