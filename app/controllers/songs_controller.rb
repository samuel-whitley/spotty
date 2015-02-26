class SongsController < ApplicationController


  def search(params={})
    # I'll need to do a little bit more reading into Rspotify's docs, to know how to display the list of songs that a person has searched for,
    # we're going to need to know how Rspotify is going to send them back to us. If they're sending back in json (which is what I'm assuming),
    # we'll have to know how everything is supposed to be parsed. Then, in the view, we'll have to have a button that appears next to each song
    # to add that song to the list of suggested songs (AKA to save it in the database)
  end

  def index
    @songs = Song.all?
    render :index
  end
end
