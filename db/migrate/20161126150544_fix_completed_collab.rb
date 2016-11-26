class FixCompletedCollab < ActiveRecord::Migration[5.0]
  def change
            rename_column :Comments, :completedcolab_id, :completedcollab_id
  end
end
