require 'test_helper'

class AcronymsControllerTest < ActionController::TestCase
  setup do
    @acronym = acronyms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acronyms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acroynm" do
    assert_difference('Acronym.count') do
      post :create, acroynm: @acronym.attributes
    end

    assert_redirected_to acroynm_path(assigns(:acroynm))
  end

  test "should show acroynm" do
    get :show, id: @acronym.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acronym.to_param
    assert_response :success
  end

  test "should update acroynm" do
    put :update, id: @acronym.to_param, acroynm: @acronym.attributes
    assert_redirected_to acroynm_path(assigns(:acroynm))
  end

  test "should destroy acroynm" do
    assert_difference('Acronym.count', -1) do
      delete :destroy, id: @acronym.to_param
    end

    assert_redirected_to acronyms_path
  end
end
