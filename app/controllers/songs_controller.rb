class SongsController < ApplicationController


  def search()
    @tracks=RSpotify::Track.search(params[:q])
    render :search
   binding.pry
  end

  def index
    @songs = Song.all?
    render :index
  end


  def add
    binding.pry
    @song =Song.new
  end
end
