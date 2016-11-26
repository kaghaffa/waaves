class RenameSongtoCompletedcollab < ActiveRecord::Migration[5.0]
  def change
        rename_column :Comments, :song_id, :completedcolab_id
  end
end
