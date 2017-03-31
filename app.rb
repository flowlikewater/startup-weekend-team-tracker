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

get('/members') do
  @members = Member.all()
  erb(:members)
end

get('/member_form') do
  erb(:member_form)
end

post('/members') do
  membername = params.fetch('membername')
  membertype = params.fetch('membertype')
  @member = Member.new({:membername => membername, :membertype => membertype}).savemember()
  erb(:success_add_member)
end

get('/team/:id2/add_member_to_team') do
  @team = Team.findteam(params.fetch('id2').to_i())
  @members = Member.all()
  erb(:add_member_to_team)
end

post('/team/:id') do
  @team = Team.findteam(params.fetch('id').to_i())
  @member = Member.all
  idmember = params.fetch('idmember')
  newmember = Member.findmember(idmember.to_i)
  @team.addmember(newmember)
  erb(:success_add_member)
end
