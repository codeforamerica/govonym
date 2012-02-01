require 'test_helper'

class AcroynmsControllerTest < ActionController::TestCase
  setup do
    @acroynm = acroynms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acroynms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acroynm" do
    assert_difference('Acroynm.count') do
      post :create, acroynm: @acroynm.attributes
    end

    assert_redirected_to acroynm_path(assigns(:acroynm))
  end

  test "should show acroynm" do
    get :show, id: @acroynm.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acroynm.to_param
    assert_response :success
  end

  test "should update acroynm" do
    put :update, id: @acroynm.to_param, acroynm: @acroynm.attributes
    assert_redirected_to acroynm_path(assigns(:acroynm))
  end

  test "should destroy acroynm" do
    assert_difference('Acroynm.count', -1) do
      delete :destroy, id: @acroynm.to_param
    end

    assert_redirected_to acroynms_path
  end
end
