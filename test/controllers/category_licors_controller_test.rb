require 'test_helper'

class CategoryLicorsControllerTest < ActionController::TestCase
  setup do
    @category_licor = category_licors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_licors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_licor" do
    assert_difference('CategoryLicor.count') do
      post :create, category_licor: { nombre: @category_licor.nombre }
    end

    assert_redirected_to category_licor_path(assigns(:category_licor))
  end

  test "should show category_licor" do
    get :show, id: @category_licor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_licor
    assert_response :success
  end

  test "should update category_licor" do
    patch :update, id: @category_licor, category_licor: { nombre: @category_licor.nombre }
    assert_redirected_to category_licor_path(assigns(:category_licor))
  end

  test "should destroy category_licor" do
    assert_difference('CategoryLicor.count', -1) do
      delete :destroy, id: @category_licor
    end

    assert_redirected_to category_licors_path
  end
end
