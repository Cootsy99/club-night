require "test_helper"

class ClubPasswordsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get club_passwords_new_url
    assert_response :success
  end

  test "should get create" do
    get club_passwords_create_url
    assert_response :success
  end

  test "should get edit" do
    get club_passwords_edit_url
    assert_response :success
  end

  test "should get update" do
    get club_passwords_update_url
    assert_response :success
  end

  test "should get destroy" do
    get club_passwords_destroy_url
    assert_response :success
  end
end
