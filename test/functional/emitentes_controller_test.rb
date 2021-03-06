require 'test_helper'

class EmitentesControllerTest < ActionController::TestCase
  setup do
    @emitente = emitentes(:one)
    login_as(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emitentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emitente" do
    assert_difference('Emitente.count') do
      post :create, :emitente => { :nome => @emitente.nome }
    end

    assert_redirected_to emitente_path(assigns(:emitente))
  end

  test "should show emitente" do
    get :show, :id => @emitente
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @emitente
    assert_response :success
  end

  test "should update emitente" do
    put :update, :id => @emitente, :emitente => { :nome => @emitente.nome }
    assert_redirected_to emitente_path(assigns(:emitente))
  end

  test "should destroy emitente" do
    assert_difference('Emitente.count', -1) do
      delete :destroy, :id => @emitente
    end

    assert_redirected_to emitentes_path
  end
end
