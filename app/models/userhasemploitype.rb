class Userhasemploitype < ApplicationRecord
  belongs_to :user
  belongs_to :emploi_type
end
