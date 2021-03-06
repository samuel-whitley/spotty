class SongsController < ApplicationController


  def search()
    if params[:q]
      @tracks=RSpotify::Track.search(params[:q])
      render :search
    else
      render :search
    end
   #binding.pry
  end

  def index
    @songs = Song.all
    render :index
  end



  def add
    #binding.pry
    song_info = params[:song]
    song_title = song_info[:title]
    song_artist = song_info[:artist]
    song_album = song_info[:album]
    song_spotify_id = song_info[:spotify_id]
    if Song.find_by spotify_id: song_spotify_id
      flash[:notice] = "That song has already been added to the list!"
      redirect_to songs_path
    else
      Song.create(:title => song_title, :artist => song_artist, :spotify_id => song_spotify_id)
      flash[:notice] = "Your song has been added to the list of suggestions!"
      redirect_to songs_index_path
    end
  end

  private

  def song_params(opts={})
    params.require(:song).permit(:title, :artist, :album, :spotify_id)
  end
end
