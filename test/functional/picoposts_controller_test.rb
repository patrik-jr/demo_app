require 'test_helper'

class PicopostsControllerTest < ActionController::TestCase
  setup do
    @picopost = picoposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:picoposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create picopost" do
    assert_difference('Picopost.count') do
      post :create, :picopost => @picopost.attributes
    end

    assert_redirected_to picopost_path(assigns(:picopost))
  end

  test "should show picopost" do
    get :show, :id => @picopost.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @picopost.to_param
    assert_response :success
  end

  test "should update picopost" do
    put :update, :id => @picopost.to_param, :picopost => @picopost.attributes
    assert_redirected_to picopost_path(assigns(:picopost))
  end

  test "should destroy picopost" do
    assert_difference('Picopost.count', -1) do
      delete :destroy, :id => @picopost.to_param
    end

    assert_redirected_to picoposts_path
  end
end
