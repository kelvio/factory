require 'test_helper'

class OperacaoFinanceirasControllerTest < ActionController::TestCase
  setup do
    @operacao_financeira = operacao_financeiras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operacao_financeiras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operacao_financeira" do
    assert_difference('OperacaoFinanceira.count') do
      post :create, :operacao_financeira => { :descricao => @operacao_financeira.descricao, :valor => @operacao_financeira.valor }
    end

    assert_redirected_to operacao_financeira_path(assigns(:operacao_financeira))
  end

  test "should show operacao_financeira" do
    get :show, :id => @operacao_financeira
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @operacao_financeira
    assert_response :success
  end

  test "should update operacao_financeira" do
    put :update, :id => @operacao_financeira, :operacao_financeira => { :descricao => @operacao_financeira.descricao, :valor => @operacao_financeira.valor }
    assert_redirected_to operacao_financeira_path(assigns(:operacao_financeira))
  end

  test "should destroy operacao_financeira" do
    assert_difference('OperacaoFinanceira.count', -1) do
      delete :destroy, :id => @operacao_financeira
    end

    assert_redirected_to operacao_financeiras_path
  end
end
