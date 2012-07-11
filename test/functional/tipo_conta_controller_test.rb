require 'test_helper'

class TipoContaControllerTest < ActionController::TestCase
  setup do
    @tipo_contum = tipo_conta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_conta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_contum" do
    assert_difference('TipoContum.count') do
      post :create, :tipo_contum => { :nome => @tipo_contum.nome }
    end

    assert_redirected_to tipo_contum_path(assigns(:tipo_contum))
  end

  test "should show tipo_contum" do
    get :show, :id => @tipo_contum
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tipo_contum
    assert_response :success
  end

  test "should update tipo_contum" do
    put :update, :id => @tipo_contum, :tipo_contum => { :nome => @tipo_contum.nome }
    assert_redirected_to tipo_contum_path(assigns(:tipo_contum))
  end

  test "should destroy tipo_contum" do
    assert_difference('TipoContum.count', -1) do
      delete :destroy, :id => @tipo_contum
    end

    assert_redirected_to tipo_conta_path
  end
end
