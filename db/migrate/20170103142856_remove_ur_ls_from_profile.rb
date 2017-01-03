class RemoveUrLsFromProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :soundcloudurl
    remove_column :users, :youtubeurl
    remove_column :users, :bandcampurl
    remove_column :users, :googledriveurl
    remove_column :users, :otherurl
  end
end
