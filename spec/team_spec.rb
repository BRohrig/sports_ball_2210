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



end