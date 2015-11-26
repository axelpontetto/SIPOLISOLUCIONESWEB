require 'test_helper'

class ValorationUsersControllerTest < ActionController::TestCase
  setup do
    @valoration_user = valoration_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:valoration_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create valoration_user" do
    assert_difference('ValorationUser.count') do
      post :create, valoration_user: { reservation_id: @valoration_user.reservation_id, user_id: @valoration_user.user_id, valor: @valoration_user.valor }
    end

    assert_redirected_to valoration_user_path(assigns(:valoration_user))
  end

  test "should show valoration_user" do
    get :show, id: @valoration_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @valoration_user
    assert_response :success
  end

  test "should update valoration_user" do
    patch :update, id: @valoration_user, valoration_user: { reservation_id: @valoration_user.reservation_id, user_id: @valoration_user.user_id, valor: @valoration_user.valor }
    assert_redirected_to valoration_user_path(assigns(:valoration_user))
  end

  test "should destroy valoration_user" do
    assert_difference('ValorationUser.count', -1) do
      delete :destroy, id: @valoration_user
    end

    assert_redirected_to valoration_users_path
  end
end
