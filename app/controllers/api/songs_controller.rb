class Api::SongsController < ApplicationController

  def index
    #Todo : check these params exist
    @song_title = params[:filters][:songTitle]
    @artist_name = params[:filters][:artistName]
    @album_title = params[:filters][:albumTitle]

    byebug
    # @songs = Song.where("song_title = ?", @song_title)

    @songs = Song.all
    render :index
  end

  private
  def filter_params
    params.require(:filters).permit(:song_title, :artist_name, :album_title)
  end
end
