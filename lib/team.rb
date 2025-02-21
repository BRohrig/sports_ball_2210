require './lib/player'

class Team
  attr_reader :team_name, :city, :roster

  def initialize(team_name, city)
    @team_name = team_name
    @city = city
    @roster = []
  end

  def player_count
    @roster.count
  end

  def add_player(player)
    @roster << player
  end

  def long_term_players
    @roster.find_all do |player|
      player.contract_length > 24
    end
  end

  def short_term_players
    @roster.find_all do |player|
      player.contract_length <= 24
    end
  end

  def total_value
    @roster.sum do |player|
      player.total_cost
    end
  end

  def details
    {"total value" => total_value, 
    "player_count" => player_count}
  end

  def average_cost_of_player
    "$#{total_value / player_count}"
  end

  def last_names
    @roster.map do |player|
      player.last_name
    end
  end

  def players_by_last_name
    last_names.sort.join(", ")
  end
end