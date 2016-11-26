class UsersController  < ApplicationController

#skip_before_action :authenticate_user!

  def home


  end

  def create_profile
  end

  def update_row
    u = User.find(current_user.id)
    u.genre1 = params[:genre1]
    u.genre2 = params[:genre2]
    u.genre3 = params[:genre3]
    u.goals = params[:goals]
    u.experience = params[:experience]
    u.soundcloudurl = params[:soundcloudurl]
    u.youtubeurl = params[:youtubeurl]
    u.bandcampurl = params[:bandcampurl]
    u.googledriveurl = params[:googledriveurl]
    u.otherurl = params[:otherurl]
    u.production = params[:skill_production]
    u.vocals = params[:skill_vocals]
    u.liveinstrumentation = params[:skill_liveinstrumentation]
    u.mixingandmastering = params[:skill_mixingandmastering]
    u.similar = params[:similar]
    u.save

    redirect_to("http://localhost:3000/")

  end

  def update_preferences
    @user = User.find(current_user.id)

  end

  def show_profile
    @user = User.find(params[:id])
  end

  def show_collabs
    @requests = Request.where(:user_id => params[:id])

    @selectedusers = Selecteduser.where(:selected_user_id => params[:id])


  end


end
