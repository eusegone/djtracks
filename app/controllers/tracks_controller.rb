class TracksController < ApplicationController
  load_and_authorize_resource
  before_action :set_track, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @tracks = Track.all
  end

  def show
    respond_with(@track)
    # @album = Album.find(@track.album_id)
  end

  def new
    @track = Track.new
    respond_with(@track)
  end

  def edit
  end

  def create
    @track = current_user.tracks.new(track_params)
    @track.save
    respond_with(@track)
  end

  def update
    @track.update(track_params)
    respond_with(@track)
  end

  def destroy
    @track.destroy
    respond_with(@track)
  end

  private
    def set_track
      @track = Track.find(params[:id])
    end

    def track_params
      params.require(:track).permit(:name, :user_id, :track_image, :track_file, :album_ids =>[])
    end
end
