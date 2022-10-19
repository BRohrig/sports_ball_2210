require './lib/team'
require './lib/player'

RSpec.describe Team do
  it 'exists' do
    team = Team.new("Sounders", "Seattle")

    expect(team).to be_a(Team)
  end

  it 'has a roster that starts out empty' do
    team = Team.new("Sounders", "Seattle")

    expect(team.roster).to eq([])
  end

  it 'can tell the number of player on the roster' do
    team = Team.new("Sounders", "Seattle")

    expect(team.player_count).to eq(0)
  end

  it 'has a method to add players to the roster' do
    team = Team.new("Sounders", "Seattle")
    player_1 = Player.new("Raul Ruidiaz", 10000, 48)
    player_2 = Player.new("Joao Paulo", 12000, 36)
    team.add_player(player_1)
    team.add_player(player_2)

    expect(team.roster).to eq([player_1, player_2])
    expect(team.player_count).to eq(2)
  end

  it 'has a method to list long term players' do
    team = Team.new("Sounders", "Seattle")
    player_1 = Player.new("Raul Ruidiaz", 10000, 25)
    player_2 = Player.new("Joao Paulo", 12000, 12)
    player_3 = Player.new("Fredy Montero", 5000, 3)
    player_4 = Player.new("Jordan Morris", 9000, 36)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)

    expect(team.long_term_players).to eq([player_1, player_4])
  end

  it 'has a method to list short term players' do
    team = Team.new("Sounders", "Seattle")
    player_1 = Player.new("Raul Ruidiaz", 10000, 25)
    player_2 = Player.new("Joao Paulo", 12000, 12)
    player_3 = Player.new("Fredy Montero", 5000, 3)
    player_4 = Player.new("Jordan Morris", 9000, 36)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)

    expect(team.short_term_players).to eq([player_2, player_3])
  end

  it 'has a method to give team total value' do
    team = Team.new("Sounders", "Seattle")
    player_1 = Player.new("Raul Ruidiaz", 10000, 25)
    player_2 = Player.new("Joao Paulo", 12000, 12)
    player_3 = Player.new("Fredy Montero", 5000, 3)
    player_4 = Player.new("Jordan Morris", 9000, 36)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
 
    expect(team.total_value).to eq(733000)
  end


end