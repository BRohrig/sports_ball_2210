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
  end
  

 



end