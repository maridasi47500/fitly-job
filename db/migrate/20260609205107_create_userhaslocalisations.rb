class CreateUserhaslocalisations < ActiveRecord::Migration[7.1]
  def change
    create_table :userhaslocalisations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :localisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
