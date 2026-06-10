require "application_system_test_case"

class LocalisationsTest < ApplicationSystemTestCase
  setup do
    @localisation = localisations(:one)
  end

  test "visiting the index" do
    visit localisations_url
    assert_selector "h1", text: "Localisations"
  end

  test "should create localisation" do
    visit localisations_url
    click_on "New localisation"

    fill_in "Name", with: @localisation.name
    click_on "Create Localisation"

    assert_text "Localisation was successfully created"
    click_on "Back"
  end

  test "should update Localisation" do
    visit localisation_url(@localisation)
    click_on "Edit this localisation", match: :first

    fill_in "Name", with: @localisation.name
    click_on "Update Localisation"

    assert_text "Localisation was successfully updated"
    click_on "Back"
  end

  test "should destroy Localisation" do
    visit localisation_url(@localisation)
    click_on "Destroy this localisation", match: :first

    assert_text "Localisation was successfully destroyed"
  end
end
