require "application_system_test_case"

class ResponsesTest < ApplicationSystemTestCase
  setup do
    @response = responses(:one)
  end

  test "visiting the index" do
    visit responses_url
    assert_selector "h1", text: "Responses"
  end

  test "should create response" do
    visit responses_url
    click_on "New response"

    check "Acceptance state" if @response.acceptance_state
    fill_in "Executive", with: @response.executive_id
    fill_in "Feedback", with: @response.feedback
    fill_in "R scale", with: @response.r_scale
    fill_in "Requesting user", with: @response.requesting_user_id
    fill_in "Res description", with: @response.res_description
    fill_in "Resolution key", with: @response.resolution_key
    fill_in "Response date", with: @response.response_date
    fill_in "Ticket", with: @response.ticket_id
    click_on "Create Response"

    assert_text "Response was successfully created"
    click_on "Back"
  end

  test "should update Response" do
    visit response_url(@response)
    click_on "Edit this response", match: :first

    check "Acceptance state" if @response.acceptance_state
    fill_in "Executive", with: @response.executive_id
    fill_in "Feedback", with: @response.feedback
    fill_in "R scale", with: @response.r_scale
    fill_in "Requesting user", with: @response.requesting_user_id
    fill_in "Res description", with: @response.res_description
    fill_in "Resolution key", with: @response.resolution_key
    fill_in "Response date", with: @response.response_date
    fill_in "Ticket", with: @response.ticket_id
    click_on "Update Response"

    assert_text "Response was successfully updated"
    click_on "Back"
  end

  test "should destroy Response" do
    visit response_url(@response)
    click_on "Destroy this response", match: :first

    assert_text "Response was successfully destroyed"
  end
end
