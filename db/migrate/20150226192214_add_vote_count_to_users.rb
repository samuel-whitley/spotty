class AddVoteCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :vote_count, :integer, :default => 20
  end
end
