require 'test_helper'

class HistoricoChequesControllerTest < ActionController::TestCase
  setup do
    @historico_cheque = historico_cheques(:one)
    login_as(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:historico_cheques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create historico_cheque" do
    assert_difference('HistoricoCheque.count') do
      post :create, :historico_cheque => { :descricao => @historico_cheque.descricao, :entrada => @historico_cheque.entrada, :saida => @historico_cheque.saida }
    end

    assert_redirected_to historico_cheque_path(assigns(:historico_cheque))
  end

  test "should show historico_cheque" do
    get :show, :id => @historico_cheque
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @historico_cheque
    assert_response :success
  end

  test "should update historico_cheque" do
    put :update, :id => @historico_cheque, :historico_cheque => { :descricao => @historico_cheque.descricao, :entrada => @historico_cheque.entrada, :saida => @historico_cheque.saida }
    assert_redirected_to historico_cheque_path(assigns(:historico_cheque))
  end

  test "should destroy historico_cheque" do
    assert_difference('HistoricoCheque.count', -1) do
      delete :destroy, :id => @historico_cheque
    end

    assert_redirected_to historico_cheques_path
  end
end
