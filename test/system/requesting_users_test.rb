require "application_system_test_case"

class RequestingUsersTest < ApplicationSystemTestCase
  setup do
    @requesting_user = requesting_users(:one)
  end

  test "visiting the index" do
    visit requesting_users_url
    assert_selector "h1", text: "Requesting users"
  end

  test "should create requesting user" do
    visit requesting_users_url
    click_on "New requesting user"

    fill_in "Requesting email", with: @requesting_user.requesting_email
    fill_in "User", with: @requesting_user.user_id
    click_on "Create Requesting user"

    assert_text "Requesting user was successfully created"
    click_on "Back"
  end

  test "should update Requesting user" do
    visit requesting_user_url(@requesting_user)
    click_on "Edit this requesting user", match: :first

    fill_in "Requesting email", with: @requesting_user.requesting_email
    fill_in "User", with: @requesting_user.user_id
    click_on "Update Requesting user"

    assert_text "Requesting user was successfully updated"
    click_on "Back"
  end

  test "should destroy Requesting user" do
    visit requesting_user_url(@requesting_user)
    click_on "Destroy this requesting user", match: :first

    assert_text "Requesting user was successfully destroyed"
  end
end
