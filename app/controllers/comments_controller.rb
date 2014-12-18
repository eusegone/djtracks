class CommentsController < ApplicationController
  load_and_authorize_resource
  def create 
    @track = Track.find(params[:track_id])
    @comment = @track.comments.new(comment_params)
    @comment.status = "draft"
    @comment.user = current_user
    @comment.save
    redirect_to @track
  end
  def approve
    Comment.update_all({status: "approved"}, {id: params[:comment_ids]})
    redirect_to post_comments_path
  end

  def comment_params
    params.require(:comment).permit(:title, :comment, :status)
  end

end
