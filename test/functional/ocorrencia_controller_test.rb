require 'test_helper'

class OcorrenciaControllerTest < ActionController::TestCase
  setup do
    @ocorrencium = ocorrencia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ocorrencia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ocorrencium" do
    assert_difference('Ocorrencium.count') do
      post :create, :ocorrencium => { :valor => @ocorrencium.valor, :vencimento => @ocorrencium.vencimento }
    end

    assert_redirected_to ocorrencium_path(assigns(:ocorrencium))
  end

  test "should show ocorrencium" do
    get :show, :id => @ocorrencium
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ocorrencium
    assert_response :success
  end

  test "should update ocorrencium" do
    put :update, :id => @ocorrencium, :ocorrencium => { :valor => @ocorrencium.valor, :vencimento => @ocorrencium.vencimento }
    assert_redirected_to ocorrencium_path(assigns(:ocorrencium))
  end

  test "should destroy ocorrencium" do
    assert_difference('Ocorrencium.count', -1) do
      delete :destroy, :id => @ocorrencium
    end

    assert_redirected_to ocorrencia_path
  end
end
