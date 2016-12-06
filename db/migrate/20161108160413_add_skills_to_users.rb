class AddSkillsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :production, :boolean
    add_column :users, :vocals, :boolean
    add_column :users, :liveinstrumentation, :boolean
    add_column :users, :mixingandmastering, :boolean
  end
end
