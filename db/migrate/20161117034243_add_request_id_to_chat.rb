class AddRequestIdToChat < ActiveRecord::Migration[5.0]
  def change
      add_column :chats, :request_id, :integer
  end
end
