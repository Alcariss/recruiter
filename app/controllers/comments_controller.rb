class CommentsController < ApplicationController
before_filter :authorise

def create
	@candidate = Candidate.find (params[:candidate_id])
	@comment = @candidate.comments.create comment_params
	@comment.user_id = @current_user.id
	@comment.save
	
	respond_to do |format|
		format.html { redirect_to @candidate}
	end
end
private
	#def candidate_params
    #  params.require(:candidate).permit(:candidate_id)
    #end
	
	def comment_params
      params.require(:comment).permit(:user_id, :candidate_id, :content)
    end
end
