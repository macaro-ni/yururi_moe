require "test_helper"

class Public::QuizzesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get public_quizzes_top_url
    assert_response :success
  end

  test "should get privacy" do
    get public_quizzes_privacy_url
    assert_response :success
  end
end
