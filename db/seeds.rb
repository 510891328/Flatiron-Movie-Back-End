# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'omdb/api'

Movie.destroy_all
user = User.create(name: 'Sean', username: 'SeanP')


client = Omdb::Api::Client.new(api_key: ENV['OMDB_KEY'])


movie_titles = ['honest thief', 'come play', 'the war with grandpa', 'tenet', 'the empty man', 'the new mutants', 'joker', 'unhinged', 'jungleland', 'the shawshank redemption']

movie_titles.each do |movie| 
  found = client.find_by_title(movie)
    Movie.create(title: found.title, released: found.released, genre: found.genre, rated: found.rated, writer: found.writer, director: found.director, actors: found.actors, plot: found.plot, runtime: found.runtime, poster: found.poster, imdb_rating: found.imdb_rating, awards: found.awards, metascore: found.metascore, imdb_id: found.imdb_id, country: found.country)
end



