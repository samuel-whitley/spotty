class ChangeVoteDefault < ActiveRecord::Migration
  def change
    change_column :songs, :votes, :default => 1
  end
end
