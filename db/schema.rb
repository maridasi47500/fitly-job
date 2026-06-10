# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2026_06_09_211714) do
  create_table "emploi_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emplois", force: :cascade do |t|
    t.integer "titre_de_poste_id", null: false
    t.integer "localisation_id", null: false
    t.integer "type_de_localisation_id", null: false
    t.integer "emploi_type_id", null: false
    t.integer "niveau_experience_id", null: false
    t.integer "annees_experience"
    t.integer "fourchette_salaire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emploi_type_id"], name: "index_emplois_on_emploi_type_id"
    t.index ["localisation_id"], name: "index_emplois_on_localisation_id"
    t.index ["niveau_experience_id"], name: "index_emplois_on_niveau_experience_id"
    t.index ["titre_de_poste_id"], name: "index_emplois_on_titre_de_poste_id"
    t.index ["type_de_localisation_id"], name: "index_emplois_on_type_de_localisation_id"
  end

  create_table "localisations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "niveau_experiences", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "titre_de_postes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_de_localisations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "userhasemploitypes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "emploi_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emploi_type_id"], name: "index_userhasemploitypes_on_emploi_type_id"
    t.index ["user_id"], name: "index_userhasemploitypes_on_user_id"
  end

  create_table "userhaslocalisations", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "localisation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["localisation_id"], name: "index_userhaslocalisations_on_localisation_id"
    t.index ["user_id"], name: "index_userhaslocalisations_on_user_id"
  end

  create_table "userhastitredepostes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "titre_de_poste_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["titre_de_poste_id"], name: "index_userhastitredepostes_on_titre_de_poste_id"
    t.index ["user_id"], name: "index_userhastitredepostes_on_user_id"
  end

  create_table "userhastypedelocalisations", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "type_de_localisation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_de_localisation_id"], name: "index_userhastypedelocalisations_on_type_de_localisation_id"
    t.index ["user_id"], name: "index_userhastypedelocalisations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nom", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "annees_experience"
    t.string "niveau_experience_id"
    t.string "fourchette_salaire"
    t.string "country_id", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "emplois", "emploi_types"
  add_foreign_key "emplois", "localisations"
  add_foreign_key "emplois", "niveau_experiences"
  add_foreign_key "emplois", "titre_de_postes"
  add_foreign_key "emplois", "type_de_localisations"
  add_foreign_key "userhasemploitypes", "emploi_types"
  add_foreign_key "userhasemploitypes", "users"
  add_foreign_key "userhaslocalisations", "localisations"
  add_foreign_key "userhaslocalisations", "users"
  add_foreign_key "userhastitredepostes", "titre_de_postes"
  add_foreign_key "userhastitredepostes", "users"
  add_foreign_key "userhastypedelocalisations", "type_de_localisations"
  add_foreign_key "userhastypedelocalisations", "users"
end
