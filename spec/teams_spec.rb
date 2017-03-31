require('rspec')
require('teams')
require('members')

describe(Team) do
  before() do
    Team.clear()
  end

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

  describe('.findteam') do
    it('finds the team based on its unique id') do
      test_team = Team.new({:teamname => 'testname', :description => 'testdescription'})
      test_team.saveteam()
      expect(Team.findteam(test_team.id)).to(eq(test_team))
    end
  end

  describe('#addmember') do
    it('adds a member to a specific team') do
      test_member = Member.new({:membername => 'kevin', :membertype => 'engineer'})
      test_member.savemember()
      test_team = Team.new(:teamname => 'testname', :description => 'testdescription')
      test_team.saveteam()
      test_team.addmember(test_member)
      expect(test_team.members).to(eq([test_member]))
    end
  end
  # 
  # describe('.deletemember') do
  #   it('deletes a member from a specific team') do
  #     test_member = Member.new({:membername => 'kevin', :membertype => 'engineer'})
  #     test_member.savemember()
  #     test_member2 = Member.new({:membername => 'ian', :membertype => 'engineer'})
  #     test_member.savemember()
  #     test_team = Team.new(:teamname => 'testname', :description => 'testdescription')
  #     test_team.saveteam()
  #     test_team.addmember(test_member)
  #     test_team.addmember(test_member2)
  #     test_team.deletemember(test_member.memberid)
  #   end
  # end

end
