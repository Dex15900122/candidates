class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    @candidate = Candidate.find(params[:id])
    @comment.candidate_id = @candidate.id
    @comment.save
  end
  private

    def comment_params
      params.require(:comment).permit(:content)
    end




end
