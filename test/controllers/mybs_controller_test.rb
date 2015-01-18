require 'test_helper'

class MybsControllerTest < ActionController::TestCase
  setup do
    @myb = mybs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mybs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myb" do
    assert_difference('Myb.count') do
      post :create, myb: { mya_id: @myb.mya_id, title: @myb.title }
    end

    assert_redirected_to myb_path(assigns(:myb))
  end

  test "should show myb" do
    get :show, id: @myb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myb
    assert_response :success
  end

  test "should update myb" do
    patch :update, id: @myb, myb: { mya_id: @myb.mya_id, title: @myb.title }
    assert_redirected_to myb_path(assigns(:myb))
  end

  test "should destroy myb" do
    assert_difference('Myb.count', -1) do
      delete :destroy, id: @myb
    end

    assert_redirected_to mybs_path
  end
end
