class CreateUserMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :user_movies do |t|
      t.belongs_to :user
      t.belongs_to :movie
      t.timestamps
    end
  end
end
