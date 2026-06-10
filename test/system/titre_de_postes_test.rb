require "application_system_test_case"

class TitreDePostesTest < ApplicationSystemTestCase
  setup do
    @titre_de_poste = titre_de_postes(:one)
  end

  test "visiting the index" do
    visit titre_de_postes_url
    assert_selector "h1", text: "Titre de postes"
  end

  test "should create titre de poste" do
    visit titre_de_postes_url
    click_on "New titre de poste"

    fill_in "Name", with: @titre_de_poste.name
    click_on "Create Titre de poste"

    assert_text "Titre de poste was successfully created"
    click_on "Back"
  end

  test "should update Titre de poste" do
    visit titre_de_poste_url(@titre_de_poste)
    click_on "Edit this titre de poste", match: :first

    fill_in "Name", with: @titre_de_poste.name
    click_on "Update Titre de poste"

    assert_text "Titre de poste was successfully updated"
    click_on "Back"
  end

  test "should destroy Titre de poste" do
    visit titre_de_poste_url(@titre_de_poste)
    click_on "Destroy this titre de poste", match: :first

    assert_text "Titre de poste was successfully destroyed"
  end
end
