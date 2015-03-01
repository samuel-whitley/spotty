class DropSongsTablesTable < ActiveRecord::Migration
  def change
    drop_table :songs_tables
  end
end
