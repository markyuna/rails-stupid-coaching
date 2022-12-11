# test/system/questions_test.rb
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "saying Hello yields a grumpy response from the coach" do
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end
end
