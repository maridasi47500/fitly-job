class Userhaslocalisation < ApplicationRecord
  belongs_to :user
  belongs_to :localisation
end
