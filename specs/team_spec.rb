require("minitest/autorun")
require("minitest/rg")
require_relative("../team.rb")

class TestTeam < MiniTest::Test

def test_get_team_name__returns_watford
  sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
  assert_equal("Watford", sports_team.get_team_name())
end

def test_get_players__returns_gomez_sarr
  sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
  assert_equal(["Gomez", "Sarr"], sports_team.get_players())
end

def test_get_coach__returns_flores
  sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
  assert_equal("Flores", sports_team.get_coach())
end

def test_set_team_name__returns_hornets
  sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
  sports_team.set_team_name("Hornets")
  assert_equal("Watford", sports_team.get_team_name())
end

def test_set_players__returns_foster_cleverley
  sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
  sports_team.set_players(["Foster", "Cleverley"])
  assert_equal(["Foster", "Cleverley"], sports_team.get_players())
end

def test_set_coach__returns_flores
  sports_team = Team.new("Watford",["Gomez", "Sarr"],"Flores")
  sports_team.set_coach("Gracia")
  assert_equal("Flores", sports_team.get_coach())
end

end
