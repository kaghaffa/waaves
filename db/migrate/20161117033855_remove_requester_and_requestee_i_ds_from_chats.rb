class RemoveRequesterAndRequesteeIDsFromChats < ActiveRecord::Migration[5.0]
  def change

    remove_column :chats, :requester_id

  end
end
