require 'test_helper'

class TipoOperacaoFinanceirasControllerTest < ActionController::TestCase
  setup do
    @tipo_operacao_financeira = tipo_operacao_financeiras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_operacao_financeiras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_operacao_financeira" do
    assert_difference('TipoOperacaoFinanceira.count') do
      post :create, :tipo_operacao_financeira => { :nome => @tipo_operacao_financeira.nome }
    end

    assert_redirected_to tipo_operacao_financeira_path(assigns(:tipo_operacao_financeira))
  end

  test "should show tipo_operacao_financeira" do
    get :show, :id => @tipo_operacao_financeira
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tipo_operacao_financeira
    assert_response :success
  end

  test "should update tipo_operacao_financeira" do
    put :update, :id => @tipo_operacao_financeira, :tipo_operacao_financeira => { :nome => @tipo_operacao_financeira.nome }
    assert_redirected_to tipo_operacao_financeira_path(assigns(:tipo_operacao_financeira))
  end

  test "should destroy tipo_operacao_financeira" do
    assert_difference('TipoOperacaoFinanceira.count', -1) do
      delete :destroy, :id => @tipo_operacao_financeira
    end

    assert_redirected_to tipo_operacao_financeiras_path
  end
end
