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

end
