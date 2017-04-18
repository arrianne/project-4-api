require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { diabetes_type: @user.diabetes_type, diagnosis_date: @user.diagnosis_date, email: @user.email, emergency_name: @user.emergency_name, emergency_number: @user.emergency_number, gp_address: @user.gp_address, gp_name: @user.gp_name, medication: @user.medication, password_digest: @user.password_digest, username: @user.username } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { diabetes_type: @user.diabetes_type, diagnosis_date: @user.diagnosis_date, email: @user.email, emergency_name: @user.emergency_name, emergency_number: @user.emergency_number, gp_address: @user.gp_address, gp_name: @user.gp_name, medication: @user.medication, password_digest: @user.password_digest, username: @user.username } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
