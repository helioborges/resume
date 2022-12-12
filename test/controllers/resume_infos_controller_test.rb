require "test_helper"

class ResumeInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resume_info = resume_infos(:one)
  end

  test "should get index" do
    get resume_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_resume_info_url
    assert_response :success
  end

  test "should create resume_info" do
    assert_difference("ResumeInfo.count") do
      post resume_infos_url, params: { resume_info: { about: @resume_info.about, birthday: @resume_info.birthday, description: @resume_info.description, looking: @resume_info.looking, name: @resume_info.name, picture: @resume_info.picture } }
    end

    assert_redirected_to resume_info_url(ResumeInfo.last)
  end

  test "should show resume_info" do
    get resume_info_url(@resume_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_resume_info_url(@resume_info)
    assert_response :success
  end

  test "should update resume_info" do
    patch resume_info_url(@resume_info), params: { resume_info: { about: @resume_info.about, birthday: @resume_info.birthday, description: @resume_info.description, looking: @resume_info.looking, name: @resume_info.name, picture: @resume_info.picture } }
    assert_redirected_to resume_info_url(@resume_info)
  end

  test "should destroy resume_info" do
    assert_difference("ResumeInfo.count", -1) do
      delete resume_info_url(@resume_info)
    end

    assert_redirected_to resume_infos_url
  end
end
