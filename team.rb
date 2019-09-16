class Team

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
  end

  def get_team_name()
    return @team_name
  end

  def get_players()
    return @players
  end

  def get_coach()
    return @coach
  end

  def set_team_name(new_team_name)
    @team_name = new_team_name
  end

  def set_players(new_players)
    @players = new_players
  end

  def set_coach(new_coach)
    @coach = new_coach
  end

end
