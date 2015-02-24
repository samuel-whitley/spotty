class UsersController < ApplicationController

	def show
		@user = current_user
    render :show
	end

	def index
    @users = User.all
    render :index
	end

	private

		def as_json(opts={})
			super(:only => [:id, :email])
		end

end


