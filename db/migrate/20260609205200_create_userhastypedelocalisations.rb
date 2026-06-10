class CreateUserhastypedelocalisations < ActiveRecord::Migration[7.1]
  def change
    create_table :userhastypedelocalisations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :type_de_localisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
