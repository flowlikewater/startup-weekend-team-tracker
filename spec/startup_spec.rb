require('rspec')
require('startup')

describe('#teamname') do
  it('returns the name of the team') do
    test_team = Team.new({:teamname => 'testname', :description => 'testdescription'})
    expect(test_team.teamname()).to(eq('testname'))
  end
end

describe('#teamdescription') do
  it('returns the description of the team') do
    test_team = Team.new({:teamname => 'testname', :description => 'testdescription'})
    expect(test_team.description()).to(eq('testdescription'))
  end
end
