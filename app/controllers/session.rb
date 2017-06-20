get '/session/login' do 
	erb :'/session/login'
end

post '/session/login' do 
	# authenticate
	redirect '/'
end

get '/session/logout' do 
	session.clear
	redirect '/'
end