require 'test_helper'

class ParcelaDespesasControllerTest < ActionController::TestCase
  setup do
    @parcela_despesa = parcela_despesas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parcela_despesas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parcela_despesa" do
    assert_difference('ParcelaDespesa.count') do
      post :create, :parcela_despesa => { :valor => @parcela_despesa.valor, :vencimento => @parcela_despesa.vencimento }
    end

    assert_redirected_to parcela_despesa_path(assigns(:parcela_despesa))
  end

  test "should show parcela_despesa" do
    get :show, :id => @parcela_despesa
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @parcela_despesa
    assert_response :success
  end

  test "should update parcela_despesa" do
    put :update, :id => @parcela_despesa, :parcela_despesa => { :valor => @parcela_despesa.valor, :vencimento => @parcela_despesa.vencimento }
    assert_redirected_to parcela_despesa_path(assigns(:parcela_despesa))
  end

  test "should destroy parcela_despesa" do
    assert_difference('ParcelaDespesa.count', -1) do
      delete :destroy, :id => @parcela_despesa
    end

    assert_redirected_to parcela_despesas_path
  end
end
