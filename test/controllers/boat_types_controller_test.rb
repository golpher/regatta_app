require 'test_helper'

class BoatTypesControllerTest < ActionController::TestCase
  setup do
    @boat_type = boat_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boat_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boat_type" do
    assert_difference('BoatType.count') do
      post :create, boat_type: {  }
    end

    assert_redirected_to boat_type_path(assigns(:boat_type))
  end

  test "should show boat_type" do
    get :show, id: @boat_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boat_type
    assert_response :success
  end

  test "should update boat_type" do
    patch :update, id: @boat_type, boat_type: {  }
    assert_redirected_to boat_type_path(assigns(:boat_type))
  end

  test "should destroy boat_type" do
    assert_difference('BoatType.count', -1) do
      delete :destroy, id: @boat_type
    end

    assert_redirected_to boat_types_path
  end
end
