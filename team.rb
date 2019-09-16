class Team

  attr_reader(:team_name, :players)
  attr_accessor(:coach)

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def player_in_team(player_to_find)
      return @players.include?(player_to_find)
  end

end
