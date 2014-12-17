class TracksController < ApplicationController
  before_action :set_track, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tracks = Track.all
  end

  def show
    respond_with(@track)
    # commentable = Track.find()
    # comments = commentable.comments.recent.limit(10).all
  end

  def new
    @track = Track.new
    respond_with(@track)
  end

  def edit
  end

  def create
    @track = Track.new(track_params)
    @track.save
    respond_with(@track)
    commentable = Track.create
    comment = commentable.comments.create
    comment.title = "First comment."
    comment.comment = "This is the first comment."
    comment.save
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
      params.require(:track).permit(:name, :user_id, :album_id, :track_image, :track_file)
    end
end
