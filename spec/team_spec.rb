require './lib/team'

RSpec.describe Team do
  it 'exists' do
    team = Team.new("Sounders", "Seattle")

    expect(team).to be_a(Team)
  end



end