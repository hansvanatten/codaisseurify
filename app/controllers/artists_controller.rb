class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :destroy]
  def index
    @artists = Artist.order(sort_column + " " + sort_direction)
  end

  def show
  end

  def destroy
    @artist.destroy
    redirect_to artists_path, notice: "Artist succesfully deleted"
  end

  private

  def set_artist
        @artist = Artist.find(params[:id])
  end

  def sort_column
      Artist.column_names.include?(params[:sort]) ? params[:sort] : "name"
   end

   def sort_direction
     current_direction = params[:direction] || "asc"
     @next_direction = current_direction == "asc" ? "desc" : "asc"
     current_direction
  end
end
