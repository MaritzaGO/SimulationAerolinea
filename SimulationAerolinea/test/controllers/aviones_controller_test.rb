require 'test_helper'

class AvionesControllerTest < ActionController::TestCase
  setup do
    @avione = aviones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aviones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avione" do
    assert_difference('Avione.count') do
      post :create, avione: { codigo: @avione.codigo, estadoavion: @avione.estadoavion, identificacion_piloto: @avione.identificacion_piloto, marca: @avione.marca, nombre_piloto: @avione.nombre_piloto, ruta_asignada: @avione.ruta_asignada, totalpasajeros: @avione.totalpasajeros }
    end

    assert_redirected_to avione_path(assigns(:avione))
  end

  test "should show avione" do
    get :show, id: @avione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @avione
    assert_response :success
  end

  test "should update avione" do
    patch :update, id: @avione, avione: { codigo: @avione.codigo, estadoavion: @avione.estadoavion, identificacion_piloto: @avione.identificacion_piloto, marca: @avione.marca, nombre_piloto: @avione.nombre_piloto, ruta_asignada: @avione.ruta_asignada, totalpasajeros: @avione.totalpasajeros }
    assert_redirected_to avione_path(assigns(:avione))
  end

  test "should destroy avione" do
    assert_difference('Avione.count', -1) do
      delete :destroy, id: @avione
    end

    assert_redirected_to aviones_path
  end
end
