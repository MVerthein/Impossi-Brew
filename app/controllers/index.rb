get '/' do
  session[:location] ||= params[:zip_code]
	erb :home
end

get '/about' do
  erb :about
end
