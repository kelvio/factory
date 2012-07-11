require 'test_helper'

class TipoJurosControllerTest < ActionController::TestCase
  setup do
    @tipo_juro = tipo_juros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_juros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_juro" do
    assert_difference('TipoJuro.count') do
      post :create, :tipo_juro => { :nome => @tipo_juro.nome }
    end

    assert_redirected_to tipo_juro_path(assigns(:tipo_juro))
  end

  test "should show tipo_juro" do
    get :show, :id => @tipo_juro
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tipo_juro
    assert_response :success
  end

  test "should update tipo_juro" do
    put :update, :id => @tipo_juro, :tipo_juro => { :nome => @tipo_juro.nome }
    assert_redirected_to tipo_juro_path(assigns(:tipo_juro))
  end

  test "should destroy tipo_juro" do
    assert_difference('TipoJuro.count', -1) do
      delete :destroy, :id => @tipo_juro
    end

    assert_redirected_to tipo_juros_path
  end
end
