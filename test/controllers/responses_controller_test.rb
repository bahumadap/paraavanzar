require "test_helper"

class ResponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @response = responses(:one)

  end

  test "should get index" do
    get responses_url
    assert_response :success
  end

  test "should get new" do
    get new_response_url
    assert_response :success
  end

  test "should create response" do
    assert_difference("Response.count") do
      post responses_url, params: { response: { acceptance_state: @response.acceptance_state, executive_id: @response.executive_id, feedback: @response.feedback, r_scale: @response.r_scale, requesting_user_id: @response.requesting_user_id, res_description: @response.res_description, resolution_key: @response.resolution_key, response_date: @response.response_date, ticket_id: @response.ticket_id } }
    end

    assert_redirected_to response_url(Response.last)
  end

  test "should show response" do
    get response_url(@response)
    assert_response :success
  end

  test "should get edit" do
    get edit_response_url(@response)
    assert_response :success
  end

  test "should update response" do
    patch response_url(@response), params: { response: { acceptance_state: @response.acceptance_state, executive_id: @response.executive_id, feedback: @response.feedback, r_scale: @response.r_scale, requesting_user_id: @response.requesting_user_id, res_description: @response.res_description, resolution_key: @response.resolution_key, response_date: @response.response_date, ticket_id: @response.ticket_id } }
    assert_redirected_to response_url(@response)
  end

  test "should destroy response" do
    assert_difference("Response.count", -1) do
      delete response_url(@response)
    end

    assert_redirected_to responses_url
  end
end
