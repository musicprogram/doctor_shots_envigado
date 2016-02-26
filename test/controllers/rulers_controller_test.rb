require 'test_helper'

class RulersControllerTest < ActionController::TestCase
  setup do
    @ruler = rulers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rulers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ruler" do
    assert_difference('Ruler.count') do
      post :create, ruler: { descripcion: @ruler.descripcion, nombre: @ruler.nombre, precio: @ruler.precio }
    end

    assert_redirected_to ruler_path(assigns(:ruler))
  end

  test "should show ruler" do
    get :show, id: @ruler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ruler
    assert_response :success
  end

  test "should update ruler" do
    patch :update, id: @ruler, ruler: { descripcion: @ruler.descripcion, nombre: @ruler.nombre, precio: @ruler.precio }
    assert_redirected_to ruler_path(assigns(:ruler))
  end

  test "should destroy ruler" do
    assert_difference('Ruler.count', -1) do
      delete :destroy, id: @ruler
    end

    assert_redirected_to rulers_path
  end
end
