require "test_helper"

class AlbuminfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @albuminfo = albuminfos(:one)
  end

  test "should get index" do
    get albuminfos_url
    assert_response :success
  end

  test "should get new" do
    get new_albuminfo_url
    assert_response :success
  end

  test "should create albuminfo" do
    assert_difference('Albuminfo.count') do
      post albuminfos_url, params: { albuminfo: { artists: @albuminfo.artists, cover: @albuminfo.cover, duration: @albuminfo.duration, release: @albuminfo.release, title: @albuminfo.title, tracks: @albuminfo.tracks } }
    end

    assert_redirected_to albuminfo_url(Albuminfo.last)
  end

  test "should show albuminfo" do
    get albuminfo_url(@albuminfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_albuminfo_url(@albuminfo)
    assert_response :success
  end

  test "should update albuminfo" do
    patch albuminfo_url(@albuminfo), params: { albuminfo: { artists: @albuminfo.artists, cover: @albuminfo.cover, duration: @albuminfo.duration, release: @albuminfo.release, title: @albuminfo.title, tracks: @albuminfo.tracks } }
    assert_redirected_to albuminfo_url(@albuminfo)
  end

  test "should destroy albuminfo" do
    assert_difference('Albuminfo.count', -1) do
      delete albuminfo_url(@albuminfo)
    end

    assert_redirected_to albuminfos_url
  end
end
