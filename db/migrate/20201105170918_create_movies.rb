class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :released
      t.string :genre
      t.string :rated
      t.string :writer
      t.string :director
      t.string :actors
      t.string :plot
      t.string :runtime
      t.string :poster
      t.string :imdb_rating
      t.string :awards
      t.string :metascore
      t.string :imdb_id
      t.string :country
      t.timestamps
    end
  end
end
