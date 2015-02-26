class Song < ActiveRecord::Base

  has_many :join_votes
  belongs_to :user through: :join_votes

end
