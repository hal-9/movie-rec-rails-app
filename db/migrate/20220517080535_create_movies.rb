class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.date :date
      t.string :name
      t.integer :year
      t.string :letterboxdURI
      t.integer :rating
      t.string :tmdbID
      t.string :genre
      t.string :posterpath

      t.timestamps
    end
  end
end
