class RemoveUrLsFromProfileAgain < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :soundcloudurl
    remove_column :profiles, :youtubeurl
    remove_column :profiles, :bandcampurl
    remove_column :profiles, :googledriveurl
    remove_column :profiles, :otherurl
  end
end
