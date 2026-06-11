class CreateUserhasniveauexperiences < ActiveRecord::Migration[7.1]
  def change
    create_table :userhasniveauexperiences do |t|
      t.references :niveau_experience, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
