class CreateJoinTableMovieCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_movie_categories do |t|
      t.references :movie, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps
    end
  end
end
