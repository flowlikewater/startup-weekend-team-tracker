require('pry')

class Team

  @@teams = []

  attr_reader(:teamname, :description)
  define_method(:initialize) do |attr|
    @teamname = attr.fetch(:teamname)
    @description = attr.fetch(:description)
    @members = []
  end

  define_method(:teamname) do
    @teamname
  end

  define_method(:description) do
    @description
  end

end
