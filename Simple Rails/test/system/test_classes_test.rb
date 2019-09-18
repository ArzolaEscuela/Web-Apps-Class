require "application_system_test_case"

class TestClassesTest < ApplicationSystemTestCase
  setup do
    @test_class = test_classes(:one)
  end

  test "visiting the index" do
    visit test_classes_url
    assert_selector "h1", text: "Test Classes"
  end

  test "creating a Test class" do
    visit test_classes_url
    click_on "New Test Class"

    check "Mybool" if @test_class.myBool
    fill_in "Myfloat", with: @test_class.myFloat
    fill_in "Startdate", with: @test_class.startDate
    click_on "Create Test class"

    assert_text "Test class was successfully created"
    click_on "Back"
  end

  test "updating a Test class" do
    visit test_classes_url
    click_on "Edit", match: :first

    check "Mybool" if @test_class.myBool
    fill_in "Myfloat", with: @test_class.myFloat
    fill_in "Startdate", with: @test_class.startDate
    click_on "Update Test class"

    assert_text "Test class was successfully updated"
    click_on "Back"
  end

  test "destroying a Test class" do
    visit test_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test class was successfully destroyed"
  end
end
