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

  def vote
    if current_user.vote_count > 0
      current_user.vote_count -= 1
      current_user.save
      @song = Song.find(vote_params[:song_id].to_i)
      @song.votes += 1
      @song.save
      @vote = JoinVote.new(vote_params)
      @vote.save
      flash[:notice]="Your vote has been added"
      redirect_to songs_path
    else
      flash[:alert]="You don't have any votes left this week!"
      redirect_to songs_path
    end
  end


	private

    def vote_params(opts={})
      params.require(:join_vote).permit(:user_id, :song_id)
    end

		def as_json(opts={})
			super(:only => [:id, :email])
		end

end


