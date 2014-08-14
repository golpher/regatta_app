require 'test_helper'

class RaceTypesControllerTest < ActionController::TestCase
  setup do
    @race_type = race_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:race_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create race_type" do
    assert_difference('RaceType.count') do
      post :create, race_type: {  }
    end

    assert_redirected_to race_type_path(assigns(:race_type))
  end

  test "should show race_type" do
    get :show, id: @race_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @race_type
    assert_response :success
  end

  test "should update race_type" do
    patch :update, id: @race_type, race_type: {  }
    assert_redirected_to race_type_path(assigns(:race_type))
  end

  test "should destroy race_type" do
    assert_difference('RaceType.count', -1) do
      delete :destroy, id: @race_type
    end

    assert_redirected_to race_types_path
  end
end
