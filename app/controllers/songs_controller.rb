class SongsController < ApplicationController
  def show
    @song = Song.all
    render :show
  end

end
