require 'test_helper'

class SituacaoItemsControllerTest < ActionController::TestCase
  setup do
    @situacao_item = situacao_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:situacao_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create situacao_item" do
    assert_difference('SituacaoItem.count') do
      post :create, :situacao_item => { :nome => @situacao_item.nome }
    end

    assert_redirected_to situacao_item_path(assigns(:situacao_item))
  end

  test "should show situacao_item" do
    get :show, :id => @situacao_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @situacao_item
    assert_response :success
  end

  test "should update situacao_item" do
    put :update, :id => @situacao_item, :situacao_item => { :nome => @situacao_item.nome }
    assert_redirected_to situacao_item_path(assigns(:situacao_item))
  end

  test "should destroy situacao_item" do
    assert_difference('SituacaoItem.count', -1) do
      delete :destroy, :id => @situacao_item
    end

    assert_redirected_to situacao_items_path
  end
end
