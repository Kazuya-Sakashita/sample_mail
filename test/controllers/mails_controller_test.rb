require "test_helper"

class MailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mails_index_url
    assert_response :success
  end

  test "should get send_mail" do
    get mails_send_mail_url
    assert_response :success
  end
end
