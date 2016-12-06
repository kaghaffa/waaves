class CreateMusicPreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :music_preferences do |t|
      t.integer :user_id
      t.string :preference1
      t.string :preference2
      t.string :preference3

      t.timestamps
    end
  end
end
