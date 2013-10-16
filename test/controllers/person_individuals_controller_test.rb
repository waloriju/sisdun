require 'test_helper'

class PersonIndividualsControllerTest < ActionController::TestCase
  setup do
    @person_individual = person_individuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_individuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_individual" do
    assert_difference('PersonIndividual.count') do
      post :create, person_individual: { birthdate: @person_individual.birthdate, cpf: @person_individual.cpf, gender: @person_individual.gender, name: @person_individual.name, surname: @person_individual.surname }
    end

    assert_redirected_to person_individual_path(assigns(:person_individual))
  end

  test "should show person_individual" do
    get :show, id: @person_individual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person_individual
    assert_response :success
  end

  test "should update person_individual" do
    patch :update, id: @person_individual, person_individual: { birthdate: @person_individual.birthdate, cpf: @person_individual.cpf, gender: @person_individual.gender, name: @person_individual.name, surname: @person_individual.surname }
    assert_redirected_to person_individual_path(assigns(:person_individual))
  end

  test "should destroy person_individual" do
    assert_difference('PersonIndividual.count', -1) do
      delete :destroy, id: @person_individual
    end

    assert_redirected_to person_individuals_path
  end
end
