# On nettoie la base de données pour éviter les doublons en cas de re-run
puts "Nettoyage de la base de données..."
User.destroy_all
TitreDePoste.destroy_all
Localisation.destroy_all
TypeDeLocalisation.destroy_all
NiveauExperience.destroy_all

puts "Création des données de référence..."

# 1. Titres de postes
titres = ["Développeur Fullstack", "Data Scientist", "Product Manager", "DevOps Engineer", "Designer UX/UI", "Sales Manager"]
titres_records = titres.map { |name| TitreDePoste.create!(name: name) }

# 2. Localisations
localisations = ["Paris", "Île-de-France", "Lyon", "Marseille", "Bordeaux", "Nantes", "Remote"]
localisations_records = localisations.map { |name| Localisation.create!(name: name) }

# 3. Types de localisations
types_loc = ["Télétravail", "Sur site", "Hybride"]
types_loc_records = types_loc.map { |name| TypeDeLocalisation.create!(name: name) }

# 4. Niveaux d'expérience
niveaux = ["Stagiaire", "Apprenti", "Junior", "Confirmé", "Senior", "Lead", "Manager", "Directeur", "Vice-Président", "Direction"]
niveaux_records = niveaux.map { |name| NiveauExperience.create!(name: name) }

# Optionnel : Types d'emploi (Si tu crées une table plus tard, sinon géré sous forme de chaînes/enums)
types_emploi = ["Temps plein", "Temps partiel", "CDI", "Freelance", "Temporaire", "Stage", "Consulting"]
niveaux_emplois = types_emploi.map { |name| EmploiType.create!(name: name) }

## 5. Génération des tranches de salaire (de 0€ à 40 000€ par pas de 400€)
## Exemple de rendu : "0€ - 400€", "400€ - 800€", ..., "39600€ - 40000€"
#fourchettes_salaire = []
#(0..40000).step(400) do |salaire|
#  break if salaire == 40000
#  fourchettes_salaire << "#{salaire}€ - #{salaire + 400}€"
#end
#fourchettes_salaire << "Plus de 40000€"
#
#---
#
#puts "Création des utilisateurs..."
#
## Création de 10 utilisateurs fictifs
#10.times do |i|
#  # Sélection aléatoire des données de référence
#  niveau = niveaux_records.sample
#  experience_annees = rand(0..15).to_s # De 0 à 15 ans d'exp
#  salaire = fourchettes_salaire.sample
#  
#  user = User.create!(
#    nom: "Utilisateur #{i + 1}",
#    email: "user#{i + 1}@example.com",
#    phone: "06#{rand(10000000..99999999)}",
#    password: "password123",
#    password_confirmation: "password123",
#    annees_experience: experience_annees,
#    niveau_experience_id: niveau.id, # Relation belongs_to directe
#    fourchette_salaire: salaire,
#    country_id: "FR"
#  )
#
#  # Associations Many-to-Many (implique que tes modèles ont les relations has_and_belongs_to_many)
#  # Si tes tables de jointures ne sont pas encore créées, commente ces lignes pour éviter les erreurs.
#  user.titre_de_postes << titres_records.sample(rand(1..2))
#  user.localisations << localisations_records.sample(rand(1..2))
#  user.type_de_localisations << types_loc_records.sample(rand(1..2))
#  
#  user.save!
#end
#
puts "Seed terminé avec succès !"
#puts "- #{TitreDePoste.count} Titres de postes créés"
#puts "- #{Localisation.count} Localisations créées"
#puts "- #{TypeDeLocalisation.count} Types de localisations créés"
#puts "- #{NiveauExperience.count} Niveaux d'expérience créés"
#puts "- #{User.count} Utilisateurs créés"
