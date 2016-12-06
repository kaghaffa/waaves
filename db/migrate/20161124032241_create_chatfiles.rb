class CreateChatfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :chatfiles do |t|
      t.integer :request_id
      t.text :comment
      t.string :file_url

      t.timestamps
    end
  end
end
