require "test_helper"

class EmploisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emploi = emplois(:one)
  end

  test "should get index" do
    get emplois_url
    assert_response :success
  end

  test "should get new" do
    get new_emploi_url
    assert_response :success
  end

  test "should create emploi" do
    assert_difference("Emploi.count") do
      post emplois_url, params: { emploi: { annees_experience: @emploi.annees_experience, emploi_type_id: @emploi.emploi_type_id, fourchette_salaire: @emploi.fourchette_salaire, localisation_id: @emploi.localisation_id, niveau_experience_id: @emploi.niveau_experience_id, titre_de_poste_id: @emploi.titre_de_poste_id, type_de_localisation_id: @emploi.type_de_localisation_id } }
    end

    assert_redirected_to emploi_url(Emploi.last)
  end

  test "should show emploi" do
    get emploi_url(@emploi)
    assert_response :success
  end

  test "should get edit" do
    get edit_emploi_url(@emploi)
    assert_response :success
  end

  test "should update emploi" do
    patch emploi_url(@emploi), params: { emploi: { annees_experience: @emploi.annees_experience, emploi_type_id: @emploi.emploi_type_id, fourchette_salaire: @emploi.fourchette_salaire, localisation_id: @emploi.localisation_id, niveau_experience_id: @emploi.niveau_experience_id, titre_de_poste_id: @emploi.titre_de_poste_id, type_de_localisation_id: @emploi.type_de_localisation_id } }
    assert_redirected_to emploi_url(@emploi)
  end

  test "should destroy emploi" do
    assert_difference("Emploi.count", -1) do
      delete emploi_url(@emploi)
    end

    assert_redirected_to emplois_url
  end
end
