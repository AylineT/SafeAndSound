require "application_system_test_case"

class AlbuminfosTest < ApplicationSystemTestCase
  setup do
    @albuminfo = albuminfos(:one)
  end

  test "visiting the index" do
    visit albuminfos_url
    assert_selector "h1", text: "Albuminfos"
  end

  test "creating a Albuminfo" do
    visit albuminfos_url
    click_on "New Albuminfo"

    fill_in "Artists", with: @albuminfo.artists
    fill_in "Cover", with: @albuminfo.cover
    fill_in "Duration", with: @albuminfo.duration
    fill_in "Release", with: @albuminfo.release
    fill_in "Title", with: @albuminfo.title
    fill_in "Tracks", with: @albuminfo.tracks
    click_on "Create Albuminfo"

    assert_text "Albuminfo was successfully created"
    click_on "Back"
  end

  test "updating a Albuminfo" do
    visit albuminfos_url
    click_on "Edit", match: :first

    fill_in "Artists", with: @albuminfo.artists
    fill_in "Cover", with: @albuminfo.cover
    fill_in "Duration", with: @albuminfo.duration
    fill_in "Release", with: @albuminfo.release
    fill_in "Title", with: @albuminfo.title
    fill_in "Tracks", with: @albuminfo.tracks
    click_on "Update Albuminfo"

    assert_text "Albuminfo was successfully updated"
    click_on "Back"
  end

  test "destroying a Albuminfo" do
    visit albuminfos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Albuminfo was successfully destroyed"
  end
end
