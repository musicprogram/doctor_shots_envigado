require 'test_helper'

class LicorsControllerTest < ActionController::TestCase
  setup do
    @licor = licors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:licors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create licor" do
    assert_difference('Licor.count') do
      post :create, licor: { cantidad: @licor.cantidad, categoria: @licor.categoria, descripcion: @licor.descripcion, mililitros: @licor.mililitros, nombre: @licor.nombre, precio: @licor.precio, valor: @licor.valor }
    end

    assert_redirected_to licor_path(assigns(:licor))
  end

  test "should show licor" do
    get :show, id: @licor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @licor
    assert_response :success
  end

  test "should update licor" do
    patch :update, id: @licor, licor: { cantidad: @licor.cantidad, categoria: @licor.categoria, descripcion: @licor.descripcion, mililitros: @licor.mililitros, nombre: @licor.nombre, precio: @licor.precio, valor: @licor.valor }
    assert_redirected_to licor_path(assigns(:licor))
  end

  test "should destroy licor" do
    assert_difference('Licor.count', -1) do
      delete :destroy, id: @licor
    end

    assert_redirected_to licors_path
  end
end
