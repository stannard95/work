class SongsController < ApplicationController
  def index
    @album = Album.find(params[:album_id])
    @songs = @album.songs
  end

  def show
    @album = Album.find(params[:album_id])
    @song = @album.songs.find(params[:id])
  end

  def new
    @album = Album.find(params[:album_id])
    @song = Song.new
  end

  def create

    album = Album.find(params[:album_id])
    album.songs.create(song_params)

    redirect_to album

  end

  def edit
    @album = Album.find(params[:album_id])
    @song = @album.songs.find(params[:id])
  end

  def update
    album = Album.find(params[:album_id])
    song = album.songs.find(params[:id])
    song.update(song_params)

    redirect_to album
  end

  def destroy
    album = Album.find(params[:album_id])
    album.songs.destroy(params[:id])
    redirect_to album

  end

  protected
  def song_params
    params.require(:song).permit(:title, :duration)

  end

end
