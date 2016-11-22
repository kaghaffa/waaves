class RemoveRequesteeIdFromChats < ActiveRecord::Migration[5.0]
  def change
    remove_column :chats, :requestee_id
    
  end
end
