class CreateNiveauExperiences < ActiveRecord::Migration[7.1]
  def change
    create_table :niveau_experiences do |t|
      t.string :name

      t.timestamps
    end
  end
end
