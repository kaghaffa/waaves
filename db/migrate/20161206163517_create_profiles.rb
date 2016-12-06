class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :genre1
      t.string :genre2
      t.string :genre3
      t.integer :goals
      t.integer :experience
      t.string :souncloudurl
      t.string :youtubeurl
      t.string :bandcampurl
      t.string :googledriveurl
      t.string :otherurl
      t.boolean :production
      t.boolean :vocals
      t.boolean :liveinstrumentation
      t.string :mixingandmastering
      t.string :similar

      t.timestamps
    end
  end
end
