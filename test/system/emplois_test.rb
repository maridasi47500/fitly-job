require "application_system_test_case"

class EmploisTest < ApplicationSystemTestCase
  setup do
    @emploi = emplois(:one)
  end

  test "visiting the index" do
    visit emplois_url
    assert_selector "h1", text: "Emplois"
  end

  test "should create emploi" do
    visit emplois_url
    click_on "New emploi"

    fill_in "Annees experience", with: @emploi.annees_experience
    fill_in "Emploi type", with: @emploi.emploi_type_id
    fill_in "Fourchette salaire", with: @emploi.fourchette_salaire
    fill_in "Localisation", with: @emploi.localisation_id
    fill_in "Niveau experience", with: @emploi.niveau_experience_id
    fill_in "Titre de poste", with: @emploi.titre_de_poste_id
    fill_in "Type de localisation", with: @emploi.type_de_localisation_id
    click_on "Create Emploi"

    assert_text "Emploi was successfully created"
    click_on "Back"
  end

  test "should update Emploi" do
    visit emploi_url(@emploi)
    click_on "Edit this emploi", match: :first

    fill_in "Annees experience", with: @emploi.annees_experience
    fill_in "Emploi type", with: @emploi.emploi_type_id
    fill_in "Fourchette salaire", with: @emploi.fourchette_salaire
    fill_in "Localisation", with: @emploi.localisation_id
    fill_in "Niveau experience", with: @emploi.niveau_experience_id
    fill_in "Titre de poste", with: @emploi.titre_de_poste_id
    fill_in "Type de localisation", with: @emploi.type_de_localisation_id
    click_on "Update Emploi"

    assert_text "Emploi was successfully updated"
    click_on "Back"
  end

  test "should destroy Emploi" do
    visit emploi_url(@emploi)
    click_on "Destroy this emploi", match: :first

    assert_text "Emploi was successfully destroyed"
  end
end
