require('rspec')
require('members')

describe(Member) do
  before() do
    Member.clear()
  end

  describe('#membername') do
    it('returns name of member') do
      test_member = Member.new(:membername => 'kevin', :membertype => 'engineer')
      expect(test_member.membername()).to(eq('kevin'))
    end
  end

  describe('.all') do
    it('returns all @@members, empty at first') do
      test_member = Member.new(:membername => 'kevin', :membertype => 'engineer')
      expect(Member.all()).to(eq([]))
    end
  end

  describe('#savemember') do
    it('adds a member object to @@members') do
      test_member = Member.new(:membername => 'kevin', :membertype => 'engineer')
      test_member.savemember()
      expect(Member.all()).to(eq([test_member]))
    end
  end

  describe('.clear') do
    it('clears the @@members') do
      test_member = Member.new(:membername => 'kevin', :membertype => 'engineer')
      test_member.savemember()
      Member.clear()
      expect(Member.all()).to(eq([]))
    end
  end

  describe('.findmember') do
    it('finds the member by id') do
      test_member = Member.new(:membername => 'kevin', :membertype => 'engineer')
      test_member.savemember()
      expect(Member.findmember(test_member.memberid())).to(eq(test_member))
    end
  end

end
