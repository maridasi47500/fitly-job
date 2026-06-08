class CreateUserhastitredepostes < ActiveRecord::Migration[7.1]
  def change
    create_table :userhastitredepostes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :titre_de_poste, null: false, foreign_key: true

      t.timestamps
    end
  end
end
