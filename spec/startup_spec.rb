require('rspec')
require('startup')

describe('#team_name') do
  it('returns the name of the team') do
    test_team = Team.new('testname', 'testdescription')
    expect(test_team.name()).to(eq('testname'))
  end
end

describe('#team_description') do
  it('returns the description of the team') do
    test_team = Team.new('testname', 'testdescription')
    expect(test_team.description()).to(eq('testdescription'))
  end
end
