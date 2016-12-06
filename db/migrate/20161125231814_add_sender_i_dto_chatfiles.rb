class AddSenderIDtoChatfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :chatfiles, :sender_id, :integer
  end
end
