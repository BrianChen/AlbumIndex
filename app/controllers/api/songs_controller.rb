class Api::SongsController < ApplicationController

  def index
    song_title = params[:filters][:songTitle]
    artist_name = params[:filters][:artistName]
    album_title = params[:filters][:albumTitle]

    @artist_ids = Artist.find_by_name(artist_name)
    @album_ids = Album.find_by_title(album_title)

    if song_title == '' && artist_name == '' && album_title == ''
      @songs = []
    elsif song_title != '' && artist_name == '' && album_title == ''
      @songs = Song.where("lower(title) like ?", "%#{song_title.downcase}%")
    elsif song_title == '' && artist_name != '' && album_title == ''
      @songs = Song.where(artist_id: @artist_ids)
    elsif song_title == '' && artist_name == '' && album_title != ''
      @songs = Song.where(album_id: @album_ids)
    elsif song_title != '' && artist_name != '' && album_title == ''
      @songs = Song.where("lower(title) like ?", "%#{song_title.downcase}%").where(artist_id: @artist_ids)
    elsif song_title != '' && artist_name == '' && album_title != ''
      @songs = Song.where("lower(title) like ?", "%#{song_title.downcase}%").where(album_id: @album_ids)
    elsif song_title == '' && artist_name != '' && album_title != ''
      @songs = Song.where(artist_id: @artist_ids).where(album_id: @album_ids)
    else
      @songs = Song.where("lower(title) like ?", "%#{song_title.downcase}%").where(artist_id: @artist_ids).where(album_id: @album_ids)
    end

    render :index
  end

  private
  def filter_params
    params.require(:filters).permit(:song_title, :artist_name, :album_title)
  end
end
