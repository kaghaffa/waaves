class AddSkilltoSelectedUsers < ActiveRecord::Migration[5.0]
  def change
        add_column :selectedusers, :desired_skill, :string
  end
end
