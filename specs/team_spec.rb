require("minitest/autorun")
require("minitest/rg")
require_relative("../team.rb")

class TestTeam < MiniTest::Test

  def test_get_team_name__returns_watford
    sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
    assert_equal("Watford", sports_team.team_name())
  end

  def test_get_players__returns_gomez_sarr
    sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
    assert_equal(["Gomez", "Sarr"], sports_team.players())
  end

  def test_get_coach__returns_flores
    sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
    assert_equal("Flores", sports_team.coach())
  end

  def test_set_coach__returns_gracia
    sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
    sports_team.coach = "Gracia"
    assert_equal("Gracia", sports_team.coach())
  end

  def test_add_player__returns_gomez_sarr_foster()
    sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
    sports_team.add_player("Foster")
    assert_equal(["Gomez", "Sarr","Foster"], sports_team.players())
  end

  def test_player_in_team__gomez_returns_true
    sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
    assert_equal(true, sports_team.player_in_team("Gomez"))
  end

  def test_player_in_team__foster_returns_false
    sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
    assert_equal(false, sports_team.player_in_team("Foster"))
  end

  def test_points_start_at_zero
    sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
    assert_equal(0, sports_team.points)
  end

  def test_result_points_add__win_add_3
    sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
    sports_team.result_points_add("win")
    assert_equal(3, sports_team.points())
  end

  def test_result_points_add__lose_add_0
    sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
    sports_team.result_points_add("lose")
    assert_equal(0, sports_team.points())
  end

  def test_result_points_add__draw_add_1
    sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
    sports_team.result_points_add("draw")
    assert_equal(1, sports_team.points())
  end

end
