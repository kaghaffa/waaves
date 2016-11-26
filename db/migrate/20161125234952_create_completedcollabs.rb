class CreateCompletedcollabs < ActiveRecord::Migration[5.0]
  def change
    create_table :completedcollabs do |t|
      t.integer :request_id
      t.string :file
      t.string :title

      t.timestamps
    end
  end
end
