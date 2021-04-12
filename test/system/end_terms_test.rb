require "application_system_test_case"

class EndTermsTest < ApplicationSystemTestCase
  setup do
    @end_term = end_terms(:one)
  end

  test "visiting the index" do
    visit end_terms_url
    assert_selector "h1", text: "End Terms"
  end

  test "creating a End term" do
    visit end_terms_url
    click_on "New End Term"

    fill_in "Chapter", with: @end_term.chapter
    fill_in "Definition", with: @end_term.definition
    fill_in "Number", with: @end_term.number
    click_on "Create End term"

    assert_text "End term was successfully created"
    click_on "Back"
  end

  test "updating a End term" do
    visit end_terms_url
    click_on "Edit", match: :first

    fill_in "Chapter", with: @end_term.chapter
    fill_in "Definition", with: @end_term.definition
    fill_in "Number", with: @end_term.number
    click_on "Update End term"

    assert_text "End term was successfully updated"
    click_on "Back"
  end

  test "destroying a End term" do
    visit end_terms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "End term was successfully destroyed"
  end
end
