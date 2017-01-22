class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(sort_column + " " + @current_direction)
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def destroy
    @artist.destroy
    redirect_to artists_path, notice: "Artist succesfully deleted"
  end

  private
  def sort_column
      Artist.column_names.include?(params[:sort]) ? params[:sort] : "name"
   end

   def sort_direction
     current_direction = params[:direction] || "asc"
     @next_direction = current_direction == "asc" ? "desc" : "asc"
  end
end
