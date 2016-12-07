class ChangeDatatypeInProfiles < ActiveRecord::Migration[5.0]
  def change

        remove_column :profiles, :mixingandmastering
        add_column :profiles, :mixingandmastering, :boolean

  end
end
