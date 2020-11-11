class ChangePriceToFloatInMovies < ActiveRecord::Migration[6.0]
  def change
    change_column :movies, :price, :float
  end
end
