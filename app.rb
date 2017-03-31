require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/teams')
require('./lib/members')

get('/') do
  @teams = Team.all()
  erb(:index)
end

get('/team_form') do
  erb(:team_form)
end

post('/') do
  teamname = params.fetch('teamname')
  teamdescription = params.fetch('teamdescription')
  @team = Team.new({:teamname => teamname, :description => teamdescription})
  @team.saveteam()
  erb(:success_add_team)
end

get('/team/:id') do
  @team = Team.findteam(params.fetch('id').to_i())
  erb(:team)
end
