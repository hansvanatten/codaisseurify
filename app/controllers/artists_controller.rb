class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def delete
    @artist.destroy
    redirect_to artists_path
  end
end
