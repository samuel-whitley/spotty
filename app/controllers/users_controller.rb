class UsersController < ApplicationController

	def show
		@user = current_user
    render :show
	end

	def index
    if current_user != nil
      @users = User.all
      render :index
    else
      redirect_to new_user_session_path
	  end
  end

  def spotify
    binding.pry
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])

    if spotify_user
      redirect_to users_show_path
    end
  end


	private

		def as_json(opts={})
			super(:only => [:id, :email])
		end

end


