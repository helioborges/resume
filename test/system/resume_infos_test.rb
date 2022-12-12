require "application_system_test_case"

class ResumeInfosTest < ApplicationSystemTestCase
  setup do
    @resume_info = resume_infos(:one)
  end

  test "visiting the index" do
    visit resume_infos_url
    assert_selector "h1", text: "Resume infos"
  end

  test "should create resume info" do
    visit resume_infos_url
    click_on "New resume info"

    fill_in "About", with: @resume_info.about
    fill_in "Birthday", with: @resume_info.birthday
    fill_in "Description", with: @resume_info.description
    fill_in "Looking", with: @resume_info.looking
    fill_in "Name", with: @resume_info.name
    fill_in "Picture", with: @resume_info.picture
    click_on "Create Resume info"

    assert_text "Resume info was successfully created"
    click_on "Back"
  end

  test "should update Resume info" do
    visit resume_info_url(@resume_info)
    click_on "Edit this resume info", match: :first

    fill_in "About", with: @resume_info.about
    fill_in "Birthday", with: @resume_info.birthday
    fill_in "Description", with: @resume_info.description
    fill_in "Looking", with: @resume_info.looking
    fill_in "Name", with: @resume_info.name
    fill_in "Picture", with: @resume_info.picture
    click_on "Update Resume info"

    assert_text "Resume info was successfully updated"
    click_on "Back"
  end

  test "should destroy Resume info" do
    visit resume_info_url(@resume_info)
    click_on "Destroy this resume info", match: :first

    assert_text "Resume info was successfully destroyed"
  end
end
