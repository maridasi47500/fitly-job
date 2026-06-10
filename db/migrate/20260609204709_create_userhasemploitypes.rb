class CreateUserhasemploitypes < ActiveRecord::Migration[7.1]
  def change
    create_table :userhasemploitypes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :emploi_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
