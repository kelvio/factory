require 'test_helper'

class MunicipioDominiosControllerTest < ActionController::TestCase
  setup do
    @municipio_dominio = municipio_dominios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:municipio_dominios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create municipio_dominio" do
    assert_difference('MunicipioDominio.count') do
      post :create, :municipio_dominio => { :nome => @municipio_dominio.nome }
    end

    assert_redirected_to municipio_dominio_path(assigns(:municipio_dominio))
  end

  test "should show municipio_dominio" do
    get :show, :id => @municipio_dominio
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @municipio_dominio
    assert_response :success
  end

  test "should update municipio_dominio" do
    put :update, :id => @municipio_dominio, :municipio_dominio => { :nome => @municipio_dominio.nome }
    assert_redirected_to municipio_dominio_path(assigns(:municipio_dominio))
  end

  test "should destroy municipio_dominio" do
    assert_difference('MunicipioDominio.count', -1) do
      delete :destroy, :id => @municipio_dominio
    end

    assert_redirected_to municipio_dominios_path
  end
end
