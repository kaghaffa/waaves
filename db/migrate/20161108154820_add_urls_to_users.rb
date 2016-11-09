class AddUrlsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :soundcloudurl, :string
    add_column :users, :youtubeurl, :string
    add_column :users, :bandcampurl, :string
    add_column :users, :googledriveurl, :string
    add_column :users, :otherurl, :string
  end
end
