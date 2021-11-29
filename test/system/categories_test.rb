require "application_system_test_case"

class CategoriesTest < ApplicationSystemTestCase
  setup do
    @category = categories(:one)
  end

  test "visiting the index" do
    visit categories_url
    assert_selector "h1", text: "categories"
  end

  test "creating a category" do
    visit categories_url
    click_on "New category"

    click_on "Create category"

    assert_text "category was successfully created"
    click_on "Back"
  end

  test "updating a category" do
    visit categories_url
    click_on "Edit", match: :first

    click_on "Update category"

    assert_text "category was successfully updated"
    click_on "Back"
  end

  test "destroying a category" do
    visit categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "category was successfully destroyed"
  end
end
