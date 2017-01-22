class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def delete
    @artist.destroy
    redirect_to artists_path, notice: "Artist succesfully deleted"
  end
end
