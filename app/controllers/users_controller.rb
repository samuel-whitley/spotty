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
    @song = Song.find(vote_params[:song_id].to_i)
    if current_user.votes > 0 && !current_user.songs.include?(@song)
      current_user.votes -= 1
      current_user.save
      @song = Song.find(vote_params[:song_id].to_i)
      @song.votes += 1
      @song.save
      @vote = JoinVote.new(vote_params)
      @vote.save
      flash[:notice]="Your vote has been added"
      redirect_to songs_index_path
    elsif current_user.songs.include?(@song)
      flash[:alert]="You've already voted for this song!"
      redirect_to songs_index_path
    elsif current_user.votes = 0
      flash[:alert]="You've used your votes for the week!"
      redirect_to songs_index_path
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


