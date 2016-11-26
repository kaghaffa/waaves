class RenameCommentInChatfiles < ActiveRecord::Migration[5.0]
  def change
         rename_column :chatfiles, :comment, :file_comment
  end
end
