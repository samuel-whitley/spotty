class ChangeWeekIDtoInt < ActiveRecord::Migration
  def change
    change_column :playlists, :week_id, :integer
  end
end
