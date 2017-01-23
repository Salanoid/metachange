require 'test_helper'

class UnwantedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unwanted = unwanteds(:one)
  end

  test "should get index" do
    get unwanteds_url
    assert_response :success
  end

  test "should get new" do
    get new_unwanted_url
    assert_response :success
  end

  test "should create unwanted" do
    assert_difference('Unwanted.count') do
      post unwanteds_url, params: { unwanted: { description: @unwanted.description, title: @unwanted.title } }
    end

    assert_redirected_to unwanted_url(Unwanted.last)
  end

  test "should show unwanted" do
    get unwanted_url(@unwanted)
    assert_response :success
  end

  test "should get edit" do
    get edit_unwanted_url(@unwanted)
    assert_response :success
  end

  test "should update unwanted" do
    patch unwanted_url(@unwanted), params: { unwanted: { description: @unwanted.description, title: @unwanted.title } }
    assert_redirected_to unwanted_url(@unwanted)
  end

  test "should destroy unwanted" do
    assert_difference('Unwanted.count', -1) do
      delete unwanted_url(@unwanted)
    end

    assert_redirected_to unwanteds_url
  end
end
