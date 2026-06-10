class CreateEmplois < ActiveRecord::Migration[7.1]
  def change
    create_table :emplois do |t|
      t.references :titre_de_poste, null: false, foreign_key: true
      t.references :localisation, null: false, foreign_key: true
      t.references :type_de_localisation, null: false, foreign_key: true
      t.references :emploi_type, null: false, foreign_key: true
      t.references :niveau_experience, null: false, foreign_key: true
      t.integer :annees_experience
      t.integer :fourchette_salaire

      t.timestamps
    end
  end
end
