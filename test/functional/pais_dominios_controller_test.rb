require 'test_helper'

class PaisDominiosControllerTest < ActionController::TestCase
  setup do
    @pais_dominio = pais_dominios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pais_dominios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pais_dominio" do
    assert_difference('PaisDominio.count') do
      post :create, :pais_dominio => { :nome => @pais_dominio.nome }
    end

    assert_redirected_to pais_dominio_path(assigns(:pais_dominio))
  end

  test "should show pais_dominio" do
    get :show, :id => @pais_dominio
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pais_dominio
    assert_response :success
  end

  test "should update pais_dominio" do
    put :update, :id => @pais_dominio, :pais_dominio => { :nome => @pais_dominio.nome }
    assert_redirected_to pais_dominio_path(assigns(:pais_dominio))
  end

  test "should destroy pais_dominio" do
    assert_difference('PaisDominio.count', -1) do
      delete :destroy, :id => @pais_dominio
    end

    assert_redirected_to pais_dominios_path
  end
end
