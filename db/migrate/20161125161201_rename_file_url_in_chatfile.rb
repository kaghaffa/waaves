class RenameFileUrlInChatfile < ActiveRecord::Migration[5.0]
  def change
    rename_column :chatfiles, :file_url, :file
  end
end
