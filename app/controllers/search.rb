get '/search' do
  @beers = Beer.where("lower(name) LIKE ? OR lower(description) like ?", "%#{params[:query].downcase}%", "%#{params[:query].downcase}%" ).limit(5)
  if @beers.length < 1
    @beers = search_api(params[:query])
    if request.xhr?
      erb :'beers/_index', layout: false, locals: { beers: @beers }
    else
      erb :'home'
    end
  else
    if request.xhr?
      erb :'beers/_index', layout: false, locals: { beers: @beers }
    else
      erb :'home'
    end
  end
end
