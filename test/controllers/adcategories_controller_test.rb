require 'test_helper'

class AdcategoriesControllerTest < ActionController::TestCase
  setup do
    @adcategory = adcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adcategory" do
    assert_difference('Adcategory.count') do
      post :create, adcategory: { name: @adcategory.name }
    end

    assert_redirected_to adcategory_path(assigns(:adcategory))
  end

  test "should show adcategory" do
    get :show, id: @adcategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adcategory
    assert_response :success
  end

  test "should update adcategory" do
    patch :update, id: @adcategory, adcategory: { name: @adcategory.name }
    assert_redirected_to adcategory_path(assigns(:adcategory))
  end

  test "should destroy adcategory" do
    assert_difference('Adcategory.count', -1) do
      delete :destroy, id: @adcategory
    end

    assert_redirected_to adcategories_path
  end
end
