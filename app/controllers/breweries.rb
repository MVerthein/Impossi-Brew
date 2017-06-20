get '/breweries/index' do
  @breweries = Brewery.all
  erb :'breweries/index'
end

get '/breweries/new' do
  erb :'breweries/new'
end

post '/breweries' do
  @brewery = Brewery.new(params[:input])

  if @brewery.save
    redirect '/breweries/index'
  else
    redirect '/'
  end
end

get "/breweries/:id" do
  @breweries = Brewery.all
  @brewery = Brewery.find(params[:id])
  erb :'breweries/show'
end