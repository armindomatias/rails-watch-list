require 'open-uri'
require 'json'

url = 'http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>'

url_serialized = URI.open(url).read

movies = JSON.parse(url_serialized)

movies_results = movies["results"]

movies_results.each do |movie|
  Movie.create(
    title: movie["title"],
    overview: movie["overview"],
    poster_url: movie["poster_path"],
    rating: movie["vote_average"]
  )
end
