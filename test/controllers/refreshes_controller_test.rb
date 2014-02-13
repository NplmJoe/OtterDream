require 'test_helper'

class RefreshesControllerTest < ActionController::TestCase
  setup do
    @refresh = refreshes(:one)
    @new_refresh = {
      refresh_date: '2014-02-01',
      refresh_type: 'Code',
      env_id: 1
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:refreshes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create refresh" do
    assert_difference('Refresh.count') do
      post :create, refresh: @new_refresh
    end

    assert_redirected_to refresh_path(assigns(:refresh))
  end

  test "should show refresh" do
    get :show, id: @refresh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @refresh
    assert_response :success
  end

  test "should update refresh" do
    patch :update, id: @refresh, refresh: { env_id: @refresh.env_id, refresh_date: @refresh.refresh_date, refresh_type: @refresh.refresh_type }
    assert_redirected_to refresh_path(assigns(:refresh))
  end

  test "should destroy refresh" do
    assert_difference('Refresh.count', -1) do
      delete :destroy, id: @refresh
    end

    assert_redirected_to refreshes_path
  end
end
