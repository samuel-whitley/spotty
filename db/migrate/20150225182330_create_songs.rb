class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :votes, default: 1
      t.string :artist
      t.string :title
      t.string :album
      t.string :spotify_id  
      t.timestamps null: false
    end
  end
end
