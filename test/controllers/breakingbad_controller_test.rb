require 'test_helper'

class BreakingbadControllerTest < ActionDispatch::IntegrationTest
  test "should get season" do
    get breakingbad_season_url
    assert_response :success
  end

  test "should get episode" do
    get breakingbad_episode_url
    assert_response :success
  end

  test "should get character" do
    get breakingbad_character_url
    assert_response :success
  end

end
