get '/styles' do
  @styles = Style.all.order(name: :asc)
  erb :'styles/index'
end

get '/styles/:id' do
  @style = Style.find_by(id: params[:id])
  if session[:location]
    @locations = find_beer(session[:location], @style.name)
  end
  if request.xhr?
    erb :'styles/show', layout: false
  else
    erb :'styles/show'
  end
end
