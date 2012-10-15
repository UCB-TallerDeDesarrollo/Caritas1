require 'test_helper'

class BeneficiaryTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beneficiary_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beneficiary_type" do
    assert_difference('BeneficiaryType.count') do
      post :create, :beneficiary_type => { }
    end

    assert_redirected_to beneficiary_type_path(assigns(:beneficiary_type))
  end

  test "should show beneficiary_type" do
    get :show, :id => beneficiary_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => beneficiary_types(:one).to_param
    assert_response :success
  end

  test "should update beneficiary_type" do
    put :update, :id => beneficiary_types(:one).to_param, :beneficiary_type => { }
    assert_redirected_to beneficiary_type_path(assigns(:beneficiary_type))
  end

  test "should destroy beneficiary_type" do
    assert_difference('BeneficiaryType.count', -1) do
      delete :destroy, :id => beneficiary_types(:one).to_param
    end

    assert_redirected_to beneficiary_types_path
  end
end
