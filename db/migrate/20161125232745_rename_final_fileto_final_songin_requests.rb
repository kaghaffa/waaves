class RenameFinalFiletoFinalSonginRequests < ActiveRecord::Migration[5.0]
  def change
    rename_column :Requests, :final_file, :final_song
  end
end
