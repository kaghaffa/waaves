class CommentsController  < ApplicationController

def create_comment
c = Comment.new
c.completedcollab_id = params[:completedcollab_id]
c.comment = params[:comment]
c.user_id = current_user.id
c.save

redirect_to('/showcase')
end



end
