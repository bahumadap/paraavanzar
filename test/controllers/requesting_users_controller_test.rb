require "test_helper"

class RequestingUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requesting_user = requesting_users(:one)
  end

  test "should get index" do
    get requesting_users_url
    assert_response :success
  end

  test "should get new" do
    get new_requesting_user_url
    assert_response :success
  end

  test "should create requesting_user" do
    assert_difference("RequestingUser.count") do
      post requesting_users_url, params: { requesting_user: { requesting_email: @requesting_user.requesting_email, user_id: @requesting_user.user_id } }
    end

    assert_redirected_to requesting_user_url(RequestingUser.last)
  end

  test "should show requesting_user" do
    get requesting_user_url(@requesting_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_requesting_user_url(@requesting_user)
    assert_response :success
  end

  test "should update requesting_user" do
    patch requesting_user_url(@requesting_user), params: { requesting_user: { requesting_email: @requesting_user.requesting_email, user_id: @requesting_user.user_id } }
    assert_redirected_to requesting_user_url(@requesting_user)
  end

  test "should destroy requesting_user" do
    assert_difference("RequestingUser.count", -1) do
      delete requesting_user_url(@requesting_user)
    end

    assert_redirected_to requesting_users_url
  end
end
