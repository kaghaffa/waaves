class RenameSouncloudurlInProfiles < ActiveRecord::Migration[5.0]
  def change
    rename_column :profiles, :souncloudurl, :soundcloudurl
  end
end
