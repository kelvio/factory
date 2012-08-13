require 'test_helper'

class LoteChequesControllerTest < ActionController::TestCase
  setup do
    @lote_cheque = lote_cheques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lote_cheques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lote_cheque" do
    assert_difference('LoteCheque.count') do
      post :create, :lote_cheque => { :nome => @lote_cheque.nome }
    end

    assert_redirected_to lote_cheque_path(assigns(:lote_cheque))
  end

  test "should show lote_cheque" do
    get :show, :id => @lote_cheque
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lote_cheque
    assert_response :success
  end

  test "should update lote_cheque" do
    put :update, :id => @lote_cheque, :lote_cheque => { :nome => @lote_cheque.nome }
    assert_redirected_to lote_cheque_path(assigns(:lote_cheque))
  end

  test "should destroy lote_cheque" do
    assert_difference('LoteCheque.count', -1) do
      delete :destroy, :id => @lote_cheque
    end

    assert_redirected_to lote_cheques_path
  end
end
