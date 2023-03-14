require "test_helper"

class ArtistControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get artist_name_url
    assert_response :success
  end

  test "should get email" do
    get artist_email_url
    assert_response :success
  end

  test "should get phone_no" do
    get artist_phone_no_url
    assert_response :success
  end

  test "should get password" do
    get artist_password_url
    assert_response :success
  end
end
