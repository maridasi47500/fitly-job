class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable#,
         #:recoverable, :rememberable, :validatable
has_and_belongs_to_many :titre_de_postes, :join_table => :userhastitredepostes
has_and_belongs_to_many :emploi_types, :join_table => :userhasemploitypes
has_and_belongs_to_many :localisations, :join_table => :userhaslocalisations
has_and_belongs_to_many :type_de_localisations, :join_table => :userhastypedelocalisations

has_and_belongs_to_many :niveau_experiences, :join_table => :userhasniveauexperiences
end
