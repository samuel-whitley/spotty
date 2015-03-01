class RenameSongTable < ActiveRecord::Migration
  def change
    rename_table :songs_tables, :song_table
  end
end
