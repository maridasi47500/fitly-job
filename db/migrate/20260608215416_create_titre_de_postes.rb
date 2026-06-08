class CreateTitreDePostes < ActiveRecord::Migration[7.1]
  def change
    create_table :titre_de_postes do |t|
      t.string :name

      t.timestamps
    end
  end
end
