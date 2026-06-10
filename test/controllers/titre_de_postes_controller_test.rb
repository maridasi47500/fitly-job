require "test_helper"

class TitreDePostesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @titre_de_poste = titre_de_postes(:one)
  end

  test "should get index" do
    get titre_de_postes_url
    assert_response :success
  end

  test "should get new" do
    get new_titre_de_poste_url
    assert_response :success
  end

  test "should create titre_de_poste" do
    assert_difference("TitreDePoste.count") do
      post titre_de_postes_url, params: { titre_de_poste: { name: @titre_de_poste.name } }
    end

    assert_redirected_to titre_de_poste_url(TitreDePoste.last)
  end

  test "should show titre_de_poste" do
    get titre_de_poste_url(@titre_de_poste)
    assert_response :success
  end

  test "should get edit" do
    get edit_titre_de_poste_url(@titre_de_poste)
    assert_response :success
  end

  test "should update titre_de_poste" do
    patch titre_de_poste_url(@titre_de_poste), params: { titre_de_poste: { name: @titre_de_poste.name } }
    assert_redirected_to titre_de_poste_url(@titre_de_poste)
  end

  test "should destroy titre_de_poste" do
    assert_difference("TitreDePoste.count", -1) do
      delete titre_de_poste_url(@titre_de_poste)
    end

    assert_redirected_to titre_de_postes_url
  end
end
