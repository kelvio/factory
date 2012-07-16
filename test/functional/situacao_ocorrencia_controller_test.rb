require 'test_helper'

class SituacaoOcorrenciaControllerTest < ActionController::TestCase
  setup do
    @situacao_ocorrencium = situacao_ocorrencia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:situacao_ocorrencia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create situacao_ocorrencium" do
    assert_difference('SituacaoOcorrencium.count') do
      post :create, :situacao_ocorrencium => { :nome => @situacao_ocorrencium.nome }
    end

    assert_redirected_to situacao_ocorrencium_path(assigns(:situacao_ocorrencium))
  end

  test "should show situacao_ocorrencium" do
    get :show, :id => @situacao_ocorrencium
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @situacao_ocorrencium
    assert_response :success
  end

  test "should update situacao_ocorrencium" do
    put :update, :id => @situacao_ocorrencium, :situacao_ocorrencium => { :nome => @situacao_ocorrencium.nome }
    assert_redirected_to situacao_ocorrencium_path(assigns(:situacao_ocorrencium))
  end

  test "should destroy situacao_ocorrencium" do
    assert_difference('SituacaoOcorrencium.count', -1) do
      delete :destroy, :id => @situacao_ocorrencium
    end

    assert_redirected_to situacao_ocorrencia_path
  end
end
