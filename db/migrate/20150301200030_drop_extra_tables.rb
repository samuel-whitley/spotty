class DropExtraTables < ActiveRecord::Migration
  def change
    drop_table :song_table
  end
end
