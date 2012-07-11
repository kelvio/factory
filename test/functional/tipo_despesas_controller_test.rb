require 'test_helper'

class TipoDespesasControllerTest < ActionController::TestCase
  setup do
    @tipo_despesa = tipo_despesas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_despesas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_despesa" do
    assert_difference('TipoDespesa.count') do
      post :create, :tipo_despesa => { :nome => @tipo_despesa.nome }
    end

    assert_redirected_to tipo_despesa_path(assigns(:tipo_despesa))
  end

  test "should show tipo_despesa" do
    get :show, :id => @tipo_despesa
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tipo_despesa
    assert_response :success
  end

  test "should update tipo_despesa" do
    put :update, :id => @tipo_despesa, :tipo_despesa => { :nome => @tipo_despesa.nome }
    assert_redirected_to tipo_despesa_path(assigns(:tipo_despesa))
  end

  test "should destroy tipo_despesa" do
    assert_difference('TipoDespesa.count', -1) do
      delete :destroy, :id => @tipo_despesa
    end

    assert_redirected_to tipo_despesas_path
  end
end
