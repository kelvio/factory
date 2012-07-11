require 'test_helper'

class SituacaoChequesControllerTest < ActionController::TestCase
  setup do
    @situacao_cheque = situacao_cheques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:situacao_cheques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create situacao_cheque" do
    assert_difference('SituacaoCheque.count') do
      post :create, :situacao_cheque => { :nome => @situacao_cheque.nome }
    end

    assert_redirected_to situacao_cheque_path(assigns(:situacao_cheque))
  end

  test "should show situacao_cheque" do
    get :show, :id => @situacao_cheque
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @situacao_cheque
    assert_response :success
  end

  test "should update situacao_cheque" do
    put :update, :id => @situacao_cheque, :situacao_cheque => { :nome => @situacao_cheque.nome }
    assert_redirected_to situacao_cheque_path(assigns(:situacao_cheque))
  end

  test "should destroy situacao_cheque" do
    assert_difference('SituacaoCheque.count', -1) do
      delete :destroy, :id => @situacao_cheque
    end

    assert_redirected_to situacao_cheques_path
  end
end
