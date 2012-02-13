require 'test_helper'

class UserdatabasesControllerTest < ActionController::TestCase
  setup do
    @userdatabase = userdatabases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userdatabases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userdatabase" do
    assert_difference('Userdatabase.count') do
      post :create, userdatabase: @userdatabase.attributes
    end

    assert_redirected_to userdatabase_path(assigns(:userdatabase))
  end

  test "should show userdatabase" do
    get :show, id: @userdatabase.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userdatabase.to_param
    assert_response :success
  end

  test "should update userdatabase" do
    put :update, id: @userdatabase.to_param, userdatabase: @userdatabase.attributes
    assert_redirected_to userdatabase_path(assigns(:userdatabase))
  end

  test "should destroy userdatabase" do
    assert_difference('Userdatabase.count', -1) do
      delete :destroy, id: @userdatabase.to_param
    end

    assert_redirected_to userdatabases_path
  end
end
