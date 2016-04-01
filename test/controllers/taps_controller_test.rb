require 'test_helper'

class TapsControllerTest < ActionController::TestCase
  setup do
    @tap = taps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tap" do
    assert_difference('Tap.count') do
      post :create, tap: { macaddr: @tap.macaddr, state: @tap.state, tap: @tap.tap }
    end

    assert_redirected_to tap_path(assigns(:tap))
  end

  test "should show tap" do
    get :show, id: @tap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tap
    assert_response :success
  end

  test "should update tap" do
    patch :update, id: @tap, tap: { macaddr: @tap.macaddr, state: @tap.state, tap: @tap.tap }
    assert_redirected_to tap_path(assigns(:tap))
  end

  test "should destroy tap" do
    assert_difference('Tap.count', -1) do
      delete :destroy, id: @tap
    end

    assert_redirected_to taps_path
  end
end
