require 'test_helper'

class BeneficiaryHelpsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beneficiary_helps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beneficiary_help" do
    assert_difference('BeneficiaryHelp.count') do
      post :create, :beneficiary_help => { }
    end

    assert_redirected_to beneficiary_help_path(assigns(:beneficiary_help))
  end

  test "should show beneficiary_help" do
    get :show, :id => beneficiary_helps(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => beneficiary_helps(:one).to_param
    assert_response :success
  end

  test "should update beneficiary_help" do
    put :update, :id => beneficiary_helps(:one).to_param, :beneficiary_help => { }
    assert_redirected_to beneficiary_help_path(assigns(:beneficiary_help))
  end

  test "should destroy beneficiary_help" do
    assert_difference('BeneficiaryHelp.count', -1) do
      delete :destroy, :id => beneficiary_helps(:one).to_param
    end

    assert_redirected_to beneficiary_helps_path
  end
end
