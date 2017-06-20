require 'yelp'
helpers do
  def find_beer(location, terms)
    client = Yelp::Client.new({
        consumer_key: 'MAvhKJuwHrw4ykQJlkG4ZQ',
        consumer_secret: '1ha3-lNPgRQqcK0GAWmTYdN8F3g',
        token: 'FP4rZ3G63gyTcXP_58obp16t5UPhG9GY',
        token_secret: 'lEKyGtj71j7UfvSnvFKSAZYk6bw'
      })

      client.search(location, term: terms, radius_filter: 16093, category_filter: 'breweries,beerbar,beergardens')
  end
end
