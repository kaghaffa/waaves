class CreateSelectedusers < ActiveRecord::Migration[5.0]
  def change
    create_table :selectedusers do |t|
      t.integer :requester_id
      t.integer :requestee_id
      t.integer :request_id

      t.timestamps
    end
  end
end
