require 'test_helper'

class AppsControllerTest < ActionController::TestCase
  setup do
    @app = apps(:one)
    @new_app = {
      name: "New App",
      description: "Another app",
      dev_lead: "Lead Developer",
      env_support_lead: "Env Support Lead"
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app" do
    assert_difference('App.count') do
      post :create, app: @new_app
    end

    assert_redirected_to app_path(assigns(:app))
  end

  test "should show app" do
    get :show, id: @app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app
    assert_response :success
  end

  test "should update app" do
    patch :update, id: @app, app: { description: @app.description, dev_lead: @app.dev_lead, env_support_lead: @app.env_support_lead, name: @app.name }
    assert_redirected_to app_path(assigns(:app))
  end

  test "should destroy app" do
    assert_difference('App.count', -1) do
      delete :destroy, id: @app
    end

    assert_redirected_to apps_path
  end
end
