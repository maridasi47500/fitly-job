class CreateTypeDeLocalisations < ActiveRecord::Migration[7.1]
  def change
    create_table :type_de_localisations do |t|
      t.string :name

      t.timestamps
    end
  end
end
