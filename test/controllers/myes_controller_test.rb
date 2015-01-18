require 'test_helper'

class MyesControllerTest < ActionController::TestCase
  setup do
    @mye = myes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mye" do
    assert_difference('Mye.count') do
      post :create, mye: { mya_id: @mye.mya_id, myb_id: @mye.myb_id, myc_id: @mye.myc_id }
    end

    assert_redirected_to mye_path(assigns(:mye))
  end

  test "should show mye" do
    get :show, id: @mye
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mye
    assert_response :success
  end

  test "should update mye" do
    patch :update, id: @mye, mye: { mya_id: @mye.mya_id, myb_id: @mye.myb_id, myc_id: @mye.myc_id }
    assert_redirected_to mye_path(assigns(:mye))
  end

  test "should destroy mye" do
    assert_difference('Mye.count', -1) do
      delete :destroy, id: @mye
    end

    assert_redirected_to myes_path
  end
end
