class CreateChats < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
      t.integer :requester_id
      t.integer :requestee_id
      t.text :text

      t.timestamps
    end
  end
end
