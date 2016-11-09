class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.string :genreselect
      t.boolean :skillsearch_production
      t.boolean :skillsearch_vocals
      t.boolean :skillsearch_liveinstrumentation
      t.boolean :skillsearch_mixingandmastering
      t.string :search_text

      t.timestamps
    end
  end
end
