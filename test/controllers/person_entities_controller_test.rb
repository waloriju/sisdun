require 'test_helper'

class PersonEntitiesControllerTest < ActionController::TestCase
  setup do
    @person_entity = person_entities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_entities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_entity" do
    assert_difference('PersonEntity.count') do
      post :create, person_entity: { cnpj: @person_entity.cnpj, name: @person_entity.name, trade_name: @person_entity.trade_name }
    end

    assert_redirected_to person_entity_path(assigns(:person_entity))
  end

  test "should show person_entity" do
    get :show, id: @person_entity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person_entity
    assert_response :success
  end

  test "should update person_entity" do
    patch :update, id: @person_entity, person_entity: { cnpj: @person_entity.cnpj, name: @person_entity.name, trade_name: @person_entity.trade_name }
    assert_redirected_to person_entity_path(assigns(:person_entity))
  end

  test "should destroy person_entity" do
    assert_difference('PersonEntity.count', -1) do
      delete :destroy, id: @person_entity
    end

    assert_redirected_to person_entities_path
  end
end
