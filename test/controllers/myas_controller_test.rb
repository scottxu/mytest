require 'test_helper'

class MyasControllerTest < ActionController::TestCase
  setup do
    @mya = myas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mya" do
    assert_difference('Mya.count') do
      post :create, mya: { title: @mya.title }
    end

    assert_redirected_to mya_path(assigns(:mya))
  end

  test "should show mya" do
    get :show, id: @mya
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mya
    assert_response :success
  end

  test "should update mya" do
    patch :update, id: @mya, mya: { title: @mya.title }
    assert_redirected_to mya_path(assigns(:mya))
  end

  test "should destroy mya" do
    assert_difference('Mya.count', -1) do
      delete :destroy, id: @mya
    end

    assert_redirected_to myas_path
  end
end
