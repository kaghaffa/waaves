class RenameSongIDinLikes < ActiveRecord::Migration[5.0]
  def change
            rename_column :Likes, :song_id, :completedcollab_id
  end
end
