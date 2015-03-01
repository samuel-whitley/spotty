class ChangeSongVoteDefault < ActiveRecord::Migration
  def change
    change_column_default :songs, :votes, default: 1
  end
end
