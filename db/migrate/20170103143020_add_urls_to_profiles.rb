class AddUrlsToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :url1, :string
    add_column :profiles, :url2, :string
    add_column :profiles, :url3, :string
  end
end
