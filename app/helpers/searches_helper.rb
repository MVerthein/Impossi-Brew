helpers do

  def search_api(query)
    query = { q: query }.to_query
    beers = []

    end_point = "http://api.brewerydb.com/v2/search?key=c4f2fdb33e896a3f2a98a53b2ff3c0ae&type=beer&#{query}"

    api_result = RestClient.get(end_point)

    jhash = JSON.parse(api_result)

    jhash["data"].each do |beer|
      beer_hash = {
        name: beer["name"],
        description: beer["description"],
        abv: beer["abv"],
        style_id: beer["styleId"],
      }
      found_beer = Beer.find_or_create_by(beer_hash)
      beers << found_beer
    end
    return beers
  end
end
