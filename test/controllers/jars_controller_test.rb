require 'test_helper'

class JarsControllerTest < ActionController::TestCase
  setup do
    @jar = jars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jar" do
    assert_difference('Jar.count') do
      post :create, jar: { descripcion: @jar.descripcion, nombre: @jar.nombre, precio: @jar.precio }
    end

    assert_redirected_to jar_path(assigns(:jar))
  end

  test "should show jar" do
    get :show, id: @jar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jar
    assert_response :success
  end

  test "should update jar" do
    patch :update, id: @jar, jar: { descripcion: @jar.descripcion, nombre: @jar.nombre, precio: @jar.precio }
    assert_redirected_to jar_path(assigns(:jar))
  end

  test "should destroy jar" do
    assert_difference('Jar.count', -1) do
      delete :destroy, id: @jar
    end

    assert_redirected_to jars_path
  end
end
