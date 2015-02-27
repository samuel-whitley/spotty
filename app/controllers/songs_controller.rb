class SongsController < ApplicationController


  def search()
    if params[:q]
    @tracks=RSpotify::Track.search(params[:q])
    render :search
    else
    render :search
    end
   binding.pry
  end

  def index
    @songs = Song.all?
    render :index
  end


  def add
    binding.pry
    RSpotify::Track
  end
end
