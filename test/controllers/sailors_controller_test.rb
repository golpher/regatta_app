require 'test_helper'

class SailorsControllerTest < ActionController::TestCase
  setup do
    @sailor = sailors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sailors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sailor" do
    assert_difference('Sailor.count') do
      post :create, sailor: {  }
    end

    assert_redirected_to sailor_path(assigns(:sailor))
  end

  test "should show sailor" do
    get :show, id: @sailor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sailor
    assert_response :success
  end

  test "should update sailor" do
    patch :update, id: @sailor, sailor: {  }
    assert_redirected_to sailor_path(assigns(:sailor))
  end

  test "should destroy sailor" do
    assert_difference('Sailor.count', -1) do
      delete :destroy, id: @sailor
    end

    assert_redirected_to sailors_path
  end
end
