class AddFinalCollabToRequests < ActiveRecord::Migration[5.0]
  def change
            add_column :requests, :final_file, :string
  end
end
