class Api::SongsController < ApplicationController

  def index
    #Todo : check these params exist
    song_title = params[:filters][:songTitle]
    artist_name = params[:filters][:artistName]
    album_title = params[:filters][:albumTitle]

    if artist_name != ''
      @artists = Artist.find_by_name(artist_name)
    end

    if album_title != ''
      @album = Album.find_by(title: album_title)
    end

    # @songs = Song.where("title = ?", @song_title)
    @songs = Song.all
    byebug
    render :index
  end

  private
  def filter_params
    params.require(:filters).permit(:song_title, :artist_name, :album_title)
  end
end
