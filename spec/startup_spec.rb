require('rspec')
require('startup')

describe('#teamname') do
  it('returns the name of the team') do
    test_team = Team.new({:teamname => 'testname', :description => 'testdescription'})
    expect(test_team.teamname()).to(eq('testname'))
  end
end

describe('#description') do
  it('returns the description of the team') do
    test_team = Team.new({:teamname => 'testname', :description => 'testdescription'})
    expect(test_team.description()).to(eq('testdescription'))
  end
end

describe('.all') do
  it('@@teams empty at first') do
    expect(Team.all()).to(eq([]))
  end
end

describe('#saveteam') do
  it('saves the team to @@team') do
    test_team = Team.new({:teamname => 'testname', :description => 'testdescription'})
    test_team.saveteam()
    expect(Team.all()).to(eq([test_team]))
  end
end

describe('.clear') do
  it('clears @@team') do
    test_team = Team.new({:teamname => 'testname', :description => 'testdescription'})
    test_team.saveteam()
    Team.clear()
    expect(Team.all()).to(eq([]))
  end
end

describe('.find') do
  it('finds the team based on its unique id') do
    test_team = Team.new({:teamname => 'testname', :description => 'testdescription'})
    test_team.saveteam()
    expect(Team.find(test_team.id)).to(eq(test_team))
  end
end
