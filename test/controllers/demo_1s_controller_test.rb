require 'test_helper'

class Demo1sControllerTest < ActionController::TestCase
  setup do
    @demo_1 = demo_1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demo_1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demo_1" do
    assert_difference('Demo1.count') do
      post :create, demo_1: { new_demo: @demo_1.new_demo, new_demo_1: @demo_1.new_demo_1 }
    end

    assert_redirected_to demo_1_path(assigns(:demo_1))
  end

  test "should show demo_1" do
    get :show, id: @demo_1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @demo_1
    assert_response :success
  end

  test "should update demo_1" do
    patch :update, id: @demo_1, demo_1: { new_demo: @demo_1.new_demo, new_demo_1: @demo_1.new_demo_1 }
    assert_redirected_to demo_1_path(assigns(:demo_1))
  end

  test "should destroy demo_1" do
    assert_difference('Demo1.count', -1) do
      delete :destroy, id: @demo_1
    end

    assert_redirected_to demo_1s_path
  end
end
