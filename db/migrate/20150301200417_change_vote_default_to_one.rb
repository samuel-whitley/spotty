class ChangeVoteDefaultToOne < ActiveRecord::Migration
  def change
    change_column_default :songs, :votes, 1
  end
end
