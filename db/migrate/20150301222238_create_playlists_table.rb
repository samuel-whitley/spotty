class CreatePlaylistsTable < ActiveRecord::Migration
  def change
    create_table :playlists_tables do |t|
      t.string :week_id
      t.string :spotify_id
      t.string :track_name
      t.string :album_name
      t.string :artist_name
    end
  end
end
