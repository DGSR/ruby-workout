require "application_system_test_case"

class Test0sTest < ApplicationSystemTestCase
  setup do
    @test0 = test0s(:one)
  end

  test "visiting the index" do
    visit test0s_url
    assert_selector "h1", text: "Test0s"
  end

  test "creating a Test0" do
    visit test0s_url
    click_on "New Test0"

    fill_in "Name", with: @test0.name
    click_on "Create Test0"

    assert_text "Test0 was successfully created"
    click_on "Back"
  end

  test "updating a Test0" do
    visit test0s_url
    click_on "Edit", match: :first

    fill_in "Name", with: @test0.name
    click_on "Update Test0"

    assert_text "Test0 was successfully updated"
    click_on "Back"
  end

  test "destroying a Test0" do
    visit test0s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test0 was successfully destroyed"
  end
end
