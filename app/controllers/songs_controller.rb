class SongsController < ApplicationController
  before_action :set_artist
  def create
    @song = @artist.songs.create(song_params)
    # if @song.save
    #   redirect_to artist_path(@artist), notice: "Song successfully added"
    # else
    #   redirect_to artist_path(@artist), notice: "Failed to add song"
    # end
    respond_to do |format|
      if @song.save
        format.html { redirect_to artist_path(@artist), notice: 'Song added successfully.' }
        format.json { render :show, status: :created, location: @song }
      else
        format.html { redirect_to artist_path(@artist) }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @song = Song.find(params[:id])
    respond_to do |format|

      if @song.destroy
      # redirect_to artist_path(@artist), notice: "Song successfully deleted"
        format.html { redirect_to artist_path(@artist), notice: 'Song successfully deleted.' }
        format.json { render :show, status: :destroyed, location: @song }
      end
    end
  end

  private
  def song_params
    song_params = params.require(:song).permit(:name)
  end

  def set_artist
        @artist = Artist.find(params[:artist_id])
  end
end
