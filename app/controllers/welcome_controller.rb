class WelcomeController < ApplicationController
  def home
    u=current_user
    @emplois=Emploi.includes(:titre_de_poste, :localisation).where("titre_de_poste_id IN (:titres) OR emploi_type_id in (:emploi_types) OR type_de_localisation_id IN (:types) OR niveau_experience_id IN (:niveau_experiences) AND localisation_id IN (:locs)",
   titres: u.titre_de_poste_ids,
   locs: u.localisation_ids,
   emploi_types: u.emploi_type_ids,
   niveau_experiences: u.niveau_experience_ids,
   types: u.type_de_localisation_ids
       )

  end
end
