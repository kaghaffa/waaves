class RemoveColumnsFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :genre1
    remove_column :users, :genre2
    remove_column :users, :genre3
    remove_column :users, :goals
    remove_column :users, :experience
    remove_column :users, :soundcloudurl
    remove_column :users, :youtubeurl
    remove_column :users, :bandcampurl
    remove_column :users, :googledriveurl
    remove_column :users, :otherurl
    remove_column :users, :production
    remove_column :users, :vocals
    remove_column :users, :liveinstrumentation
    remove_column :users, :mixingandmastering
    remove_column :users, :similar
  end
end
