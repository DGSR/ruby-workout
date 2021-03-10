require "test_helper"

class Test0sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test0 = test0s(:one)
  end

  test "should get index" do
    get test0s_url
    assert_response :success
  end

  test "should get new" do
    get new_test0_url
    assert_response :success
  end

  test "should create test0" do
    assert_difference('Test0.count') do
      post test0s_url, params: { test0: { name: @test0.name } }
    end

    assert_redirected_to test0_url(Test0.last)
  end

  test "should show test0" do
    get test0_url(@test0)
    assert_response :success
  end

  test "should get edit" do
    get edit_test0_url(@test0)
    assert_response :success
  end

  test "should update test0" do
    patch test0_url(@test0), params: { test0: { name: @test0.name } }
    assert_redirected_to test0_url(@test0)
  end

  test "should destroy test0" do
    assert_difference('Test0.count', -1) do
      delete test0_url(@test0)
    end

    assert_redirected_to test0s_url
  end
end
