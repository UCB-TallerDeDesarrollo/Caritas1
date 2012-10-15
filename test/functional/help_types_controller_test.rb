require 'test_helper'

class HelpTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:help_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create help_type" do
    assert_difference('HelpType.count') do
      post :create, :help_type => { }
    end

    assert_redirected_to help_type_path(assigns(:help_type))
  end

  test "should show help_type" do
    get :show, :id => help_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => help_types(:one).to_param
    assert_response :success
  end

  test "should update help_type" do
    put :update, :id => help_types(:one).to_param, :help_type => { }
    assert_redirected_to help_type_path(assigns(:help_type))
  end

  test "should destroy help_type" do
    assert_difference('HelpType.count', -1) do
      delete :destroy, :id => help_types(:one).to_param
    end

    assert_redirected_to help_types_path
  end
end
