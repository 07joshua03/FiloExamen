require "test_helper"

class EndTermsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @end_term = end_terms(:one)
  end

  test "should get index" do
    get end_terms_url
    assert_response :success
  end

  test "should get new" do
    get new_end_term_url
    assert_response :success
  end

  test "should create end_term" do
    assert_difference('EndTerm.count') do
      post end_terms_url, params: { end_term: { chapter: @end_term.chapter, definition: @end_term.definition, number: @end_term.number } }
    end

    assert_redirected_to end_term_url(EndTerm.last)
  end

  test "should show end_term" do
    get end_term_url(@end_term)
    assert_response :success
  end

  test "should get edit" do
    get edit_end_term_url(@end_term)
    assert_response :success
  end

  test "should update end_term" do
    patch end_term_url(@end_term), params: { end_term: { chapter: @end_term.chapter, definition: @end_term.definition, number: @end_term.number } }
    assert_redirected_to end_term_url(@end_term)
  end

  test "should destroy end_term" do
    assert_difference('EndTerm.count', -1) do
      delete end_term_url(@end_term)
    end

    assert_redirected_to end_terms_url
  end
end
