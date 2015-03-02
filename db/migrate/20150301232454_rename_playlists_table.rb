class RenamePlaylistsTable < ActiveRecord::Migration
  def change
    rename_table :playlists_tables, :playlists
  end
end
