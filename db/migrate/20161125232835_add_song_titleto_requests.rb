class AddSongTitletoRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :final_song_title, :string
  end
end
