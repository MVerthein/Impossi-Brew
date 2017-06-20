get '/users/new' do 
	erb :'/user/register'
end

post '/users' do 
	# user creation function
	redirect '/session/login'
end