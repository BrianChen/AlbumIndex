class SongsController < ApplicationController

  def index
    @song_title = params[:filters][:song_title]
    @artist_name = params[:filters][:artist_name]
    @album_title = params[:filters][:album_title]

    @songs = Song.find_by_title(@song_title)
    
    render :index
  end

  private
  def filter_params
    params.require(:filters).permit(:song_title, :artist_name, :album_title)
  end
end
