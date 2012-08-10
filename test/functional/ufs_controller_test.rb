require 'test_helper'

class UfsControllerTest < ActionController::TestCase
  setup do
    @uf = ufs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ufs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uf" do
    assert_difference('Uf.count') do
      post :create, :uf => { :nome => @uf.nome }
    end

    assert_redirected_to uf_path(assigns(:uf))
  end

  test "should show uf" do
    get :show, :id => @uf
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @uf
    assert_response :success
  end

  test "should update uf" do
    put :update, :id => @uf, :uf => { :nome => @uf.nome }
    assert_redirected_to uf_path(assigns(:uf))
  end

  test "should destroy uf" do
    assert_difference('Uf.count', -1) do
      delete :destroy, :id => @uf
    end

    assert_redirected_to ufs_path
  end
end
