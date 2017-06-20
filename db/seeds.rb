end_point = "http://api.brewerydb.com/v2/categories?key=c4f2fdb33e896a3f2a98a53b2ff3c0ae"
api_result = RestClient.get(end_point)

jhash = JSON.parse(api_result)

jhash["data"].each do |category|
  Category.create(name: category["name"])
end

end_point = "http://api.brewerydb.com/v2/styles?key=c4f2fdb33e896a3f2a98a53b2ff3c0ae"

api_result = RestClient.get(end_point)

jhash = JSON.parse(api_result)

jhash["data"].each do |style|
  Style.create( name: style["name"], description: style["description"], min_abv: style["abvMin"].to_f, max_abv: style["abvMax"].to_f, category_id: style["categoryId"].to_i )
end
