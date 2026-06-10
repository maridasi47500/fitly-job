class Emploi < ApplicationRecord
  belongs_to :titre_de_poste
  belongs_to :localisation
  belongs_to :type_de_localisation
  belongs_to :emploi_type
  belongs_to :niveau_experience
end
