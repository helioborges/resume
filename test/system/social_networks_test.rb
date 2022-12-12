require "application_system_test_case"

class SocialNetworksTest < ApplicationSystemTestCase
  setup do
    @social_network = social_networks(:one)
  end

  test "visiting the index" do
    visit social_networks_url
    assert_selector "h1", text: "Social networks"
  end

  test "should create social network" do
    visit social_networks_url
    click_on "New social network"

    fill_in "Icon", with: @social_network.icon
    fill_in "Name", with: @social_network.name
    click_on "Create Social network"

    assert_text "Social network was successfully created"
    click_on "Back"
  end

  test "should update Social network" do
    visit social_network_url(@social_network)
    click_on "Edit this social network", match: :first

    fill_in "Icon", with: @social_network.icon
    fill_in "Name", with: @social_network.name
    click_on "Update Social network"

    assert_text "Social network was successfully updated"
    click_on "Back"
  end

  test "should destroy Social network" do
    visit social_network_url(@social_network)
    click_on "Destroy this social network", match: :first

    assert_text "Social network was successfully destroyed"
  end
end
