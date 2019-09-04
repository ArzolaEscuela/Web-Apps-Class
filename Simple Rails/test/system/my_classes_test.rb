require "application_system_test_case"

class MyClassesTest < ApplicationSystemTestCase
  setup do
    @my_class = my_classes(:one)
  end

  test "visiting the index" do
    visit my_classes_url
    assert_selector "h1", text: "My Classes"
  end

  test "creating a My class" do
    visit my_classes_url
    click_on "New My Class"

    fill_in "Content", with: @my_class.content
    fill_in "Name", with: @my_class.name
    click_on "Create My class"

    assert_text "My class was successfully created"
    click_on "Back"
  end

  test "updating a My class" do
    visit my_classes_url
    click_on "Edit", match: :first

    fill_in "Content", with: @my_class.content
    fill_in "Name", with: @my_class.name
    click_on "Update My class"

    assert_text "My class was successfully updated"
    click_on "Back"
  end

  test "destroying a My class" do
    visit my_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My class was successfully destroyed"
  end
end
