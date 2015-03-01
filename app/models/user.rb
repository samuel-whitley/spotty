class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :join_votes       
  has_many :songs, through: :join_votes

  # def add_playlist
  #   if token?
  #     # RSpotify::playlist.create(playlist_params)
  #   else
  #   end
  # end

  # def token?
  #   access_token && !expired?
  # end

  # def get_token!
  #   if access_token && expired?
  #     refresh_token!
  #   elsif 

  #   end
  # end

      

end
