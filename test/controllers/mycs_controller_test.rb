require 'test_helper'

class MycsControllerTest < ActionController::TestCase
  setup do
    @myc = mycs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mycs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myc" do
    assert_difference('Myc.count') do
      post :create, myc: { mya_id: @myc.mya_id, myb_id: @myc.myb_id }
    end

    assert_redirected_to myc_path(assigns(:myc))
  end

  test "should show myc" do
    get :show, id: @myc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myc
    assert_response :success
  end

  test "should update myc" do
    patch :update, id: @myc, myc: { mya_id: @myc.mya_id, myb_id: @myc.myb_id }
    assert_redirected_to myc_path(assigns(:myc))
  end

  test "should destroy myc" do
    assert_difference('Myc.count', -1) do
      delete :destroy, id: @myc
    end

    assert_redirected_to mycs_path
  end
end
