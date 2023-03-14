require "test_helper"

class ArtistControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get artist_new_url
    assert_response :success
  end

  test "should get create" do
    get artist_create_url
    assert_response :success
  end

  test "should get destroy" do
    get artist_destroy_url
    assert_response :success
  end

  test "should get login" do
    get artist_login_url
    assert_response :success
  end

  test "should get validate" do
    get artist_validate_url
    assert_response :success
  end

  test "should get logout" do
    get artist_logout_url
    assert_response :success
  end
end
