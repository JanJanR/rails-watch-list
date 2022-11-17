# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "json"
require "open-uri"

Movie.destroy_all

url = 'http://tmdb.lewagon.com/movie/top_rated'
user_serialized = URI.open(url).read
user = JSON.parse(user_serialized)
Movie.create(
  title: user['results'][0]['title'],
  overview: user['results'][0]['overview'],
  poster_url: user['results'][0]['poster_path'],
  rating: user['results'][0]['vote_average']
)

Movie.create(
  title: user['results'][1]['title'],
  overview: user['results'][1]['overview'],
  poster_url: user['results'][1]['poster_path'],
  rating: user['results'][1]['vote_average']
)

Movie.create(
  title: user['results'][2]['title'],
  overview: user['results'][2]['overview'],
  poster_url: user['results'][2]['poster_path'],
  rating: user['results'][2]['vote_average']
)

Movie.create(
  title: user['results'][3]['title'],
  overview: user['results'][3]['overview'],
  poster_url: user['results'][3]['poster_path'],
  rating: user['results'][3]['vote_average']
)

Movie.create(
  title: user['results'][4]['title'],
  overview: user['results'][4]['overview'],
  poster_url: user['results'][4]['poster_path'],
  rating: user['results'][4]['vote_average']
)
