class RemoveFinalSongfromRequests < ActiveRecord::Migration[5.0]
  def change
    remove_column :requests, :final_song, :final_song_title
  end
end
