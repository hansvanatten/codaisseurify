class SongsController < ApplicationController
  before_action :set_artist
  def create
    @song = @artist.songs.create(song_params)
    if @song.save
      redirect_to artist_path(@artist), notice: "Song successfully added"
    else
      redirect_to artist_path(@artist), notice: "Failed to add song"
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artist_path(@artist), notice: "Song successfully deleted"
  end

  private
  def song_params
    song_params = params.require(:song).permit(:name)
  end

  def set_artist
        @artist = Artist.find(params[:artist_id])
  end
end
