require 'test_helper'

class BancosControllerTest < ActionController::TestCase
  setup do
    @banco = bancos(:one)
    login_as(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bancos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create banco" do
    assert_difference('Banco.count') do
      post :create, :banco => { :codigo => @banco.codigo, :nome => @banco.nome }
    end

    assert_redirected_to banco_path(assigns(:banco))
  end

  test "should show banco" do
    get :show, :id => @banco
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @banco
    assert_response :success
  end

  test "should update banco" do
    put :update, :id => @banco, :banco => { :codigo => @banco.codigo, :nome => @banco.nome }
    assert_redirected_to banco_path(assigns(:banco))
  end

  test "should destroy banco" do
    assert_difference('Banco.count', -1) do
      delete :destroy, :id => @banco
    end

    assert_redirected_to bancos_path
  end
end
