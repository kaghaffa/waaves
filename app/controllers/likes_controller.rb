class LikesController  < ApplicationController

def create_like
  l = Like.new
  l.user_id = current_user.id
  l.completedcollab_id = params[:completedcollab_id]
  l.save

redirect_to('/showcase')
end

def remove_like
  l = Like.find_by(:user_id => current_user.id, :completedcollab_id => params[:completedcollab_id])
l.destroy

redirect_to('/showcase')
end

end
