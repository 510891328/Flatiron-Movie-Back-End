class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :user
      t.belongs_to :movie
      t.string :content
      t.timestamps
    end
  end
end
