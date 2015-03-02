class PlaylistsController < ApplicationController


  def index

  end

  def show
    @playlists = []
    Playlist.where(week_id: params[:id]).find_each do |playlist|
      @playlists << playlist
    end
    render :show
  end

  def create
    create_playlist(params[:id])
  end


  private

  def playlist_params
    params.require(:playlist).permit(:spotify_id, :week_id, :track_name, :album_name, :artist_name)
  end

  def create_playlist
    @playlists = []
    Playlist.where(week_id: params[:id]).find_each do |song|
      @playlists << song
    end
    spot_ids = []
    @playlists.each do |song|
      spot_ids << song.spotify_id
    end
    

  end

end