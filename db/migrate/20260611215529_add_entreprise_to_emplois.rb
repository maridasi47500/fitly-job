class AddEntrepriseToEmplois < ActiveRecord::Migration[7.1]
  def change
    add_column :emplois, :entreprise, :string
    add_column :emplois, :description, :text
  end
end
