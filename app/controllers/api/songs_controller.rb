class Api::SongsController < ApplicationController

  def index
    @song_title = params[:song_title]
    @artist_name = params[:artist_name]
    @album_title = params[:album_title]

    # @songs = Song.where("song_title = ?", @song_title)

    @songs = Song.all
    render :index
  end

  private
  def filter_params
    params.require(:filters).permit(:song_title, :artist_name, :album_title)
  end
end
