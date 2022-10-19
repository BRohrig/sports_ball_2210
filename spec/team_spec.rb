require './lib/team'

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



end