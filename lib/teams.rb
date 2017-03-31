require('pry')
require('time')

class Team

  @@teams = []

  attr_reader(:teamname, :description)
  define_method(:initialize) do |attr|
    @teamname = attr.fetch(:teamname)
    @description = attr.fetch(:description)
    @members = []
    @id = Time.now.to_i
  end

  define_method(:members) do
    @members
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@teams
  end

  define_method(:saveteam) do
    @@teams.push(self)
  end

  define_singleton_method(:clear) do
    @@teams.clear()
  end

  define_singleton_method(:findteam) do |id|
    foundteam = nil
    @@teams.each do |team|
      if team.id == id
        foundteam = team
      end
    end
    foundteam
  end

  define_method(:addmember) do |member|
    @members.push(member)
  end

  # define_singleton_method(:deletemember) do |memid|
  #   self.members.each do |member|
  #       @@teams.delete_if {member.memberid == memid}
  #   end
  # end

end
