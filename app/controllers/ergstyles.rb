get '/categories' do
	@categories = Category.all.limit(14)
	erb :'/style/ergstyles'
end

get '/categories/:id' do
	@styles = Category.find(params[:id]).styles
	if request.xhr?
		erb :'/style/_style', locals: {styles: @styles}, layout: false
	end
end
