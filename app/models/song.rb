class Song < ActiveRecord::Base
has_many :join_votes
has_many :users, through: :join_votes
end
