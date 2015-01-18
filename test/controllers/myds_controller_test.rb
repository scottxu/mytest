require 'test_helper'

class MydsControllerTest < ActionController::TestCase
  setup do
    @myd = myds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myd" do
    assert_difference('Myd.count') do
      post :create, myd: { mya_id: @myd.mya_id, myb_id: @myd.myb_id, myc_id: @myd.myc_id }
    end

    assert_redirected_to myd_path(assigns(:myd))
  end

  test "should show myd" do
    get :show, id: @myd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myd
    assert_response :success
  end

  test "should update myd" do
    patch :update, id: @myd, myd: { mya_id: @myd.mya_id, myb_id: @myd.myb_id, myc_id: @myd.myc_id }
    assert_redirected_to myd_path(assigns(:myd))
  end

  test "should destroy myd" do
    assert_difference('Myd.count', -1) do
      delete :destroy, id: @myd
    end

    assert_redirected_to myds_path
  end
end
