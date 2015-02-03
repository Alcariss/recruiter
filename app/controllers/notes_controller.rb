class NotesController < ApplicationController
before_filter :authorise

def create
	@company = Company.find params[:company_id]
	@note = @company.notes.create note_params
	@note.user_id = @current_user.id
	@note.save
	
	respond_to do |format|
		format.html {redirect_to @company}
	end
end
private
def note_params
      params.require(:note).permit(:user_id, :company_id, :content)
end
end
