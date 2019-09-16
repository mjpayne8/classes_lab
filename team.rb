class Team

  attr_reader(:team_name, :players, :points)
  attr_accessor(:coach)

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def player_in_team(player_to_find)
      return @players.include?(player_to_find)
  end

  def result_points_add(result)
      team_result = {
        "win" => 3,
        "lose" => 0,
        "draw" => 1
      }
      @points += team_result[result]
  end

end
