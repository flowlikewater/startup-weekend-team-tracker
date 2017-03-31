require('pry')
require('time')

class Member

  @@members = []

  attr_reader(:membername, :membertype)
  define_method(:initialize) do |attr|
    @membername = attr.fetch(:membername)
    @membertype = attr.fetch(:membertype)
    @id = Time.now.to_i
  end

  define_method(:memberid) do
    @id
  end

  define_singleton_method(:all) do
    @@members
  end

  define_method(:savemember) do
    @@members.push(self)
  end

  define_singleton_method(:clear) do
    @@members.clear()
  end

  define_singleton_method(:findmember) do |id|
    found_member = nil
    @@members.each do |member|
      if member.memberid == id
        found_member = member
      end
    end
    found_member
  end

end
