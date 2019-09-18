require 'test_helper'

class TestClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_class = test_classes(:one)
  end

  test "should get index" do
    get test_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_test_class_url
    assert_response :success
  end

  test "should create test_class" do
    assert_difference('TestClass.count') do
      post test_classes_url, params: { test_class: { myBool: @test_class.myBool, myFloat: @test_class.myFloat, startDate: @test_class.startDate } }
    end

    assert_redirected_to test_class_url(TestClass.last)
  end

  test "should show test_class" do
    get test_class_url(@test_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_class_url(@test_class)
    assert_response :success
  end

  test "should update test_class" do
    patch test_class_url(@test_class), params: { test_class: { myBool: @test_class.myBool, myFloat: @test_class.myFloat, startDate: @test_class.startDate } }
    assert_redirected_to test_class_url(@test_class)
  end

  test "should destroy test_class" do
    assert_difference('TestClass.count', -1) do
      delete test_class_url(@test_class)
    end

    assert_redirected_to test_classes_url
  end
end
