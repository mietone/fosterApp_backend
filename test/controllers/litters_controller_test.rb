require 'test_helper'

class LittersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @litter = litters(:one)
  end

  test "should get index" do
    get litters_url, as: :json
    assert_response :success
  end

  test "should create litter" do
    assert_difference('Litter.count') do
      post litters_url, params: { litter: { end_date: @litter.end_date, name: @litter.name, start_date: @litter.start_date, with_mom: @litter.with_mom } }, as: :json
    end

    assert_response 201
  end

  test "should show litter" do
    get litter_url(@litter), as: :json
    assert_response :success
  end

  test "should update litter" do
    patch litter_url(@litter), params: { litter: { end_date: @litter.end_date, name: @litter.name, start_date: @litter.start_date, with_mom: @litter.with_mom } }, as: :json
    assert_response 200
  end

  test "should destroy litter" do
    assert_difference('Litter.count', -1) do
      delete litter_url(@litter), as: :json
    end

    assert_response 204
  end
end
