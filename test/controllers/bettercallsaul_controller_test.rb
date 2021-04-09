require 'test_helper'

class BettercallsaulControllerTest < ActionDispatch::IntegrationTest
  test "should get season" do
    get bettercallsaul_season_url
    assert_response :success
  end

  test "should get episode" do
    get bettercallsaul_episode_url
    assert_response :success
  end

  test "should get character" do
    get bettercallsaul_character_url
    assert_response :success
  end

end
