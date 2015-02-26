class CreateSongsTable < ActiveRecord::Migration
  def change
    create_table :songs_tables do |t|
      t.integer :spotify_id
      t.string :song_title
      t.string :artist_name
      t.string :album_name
      t.integer :suggested_by
    end
  end
end
