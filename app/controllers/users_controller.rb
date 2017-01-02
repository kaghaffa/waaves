class UsersController  < ApplicationController

skip_before_action :authenticate_user!

  def home


  end

  def create_profile
    @profile = Profile.new
  end

  def new_row
    u = Profile.new
    u.user_id = current_user.id
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
        u.avatar_url = User.find(current_user.id).avatar_url
@profile = u
    save_status = u.save

        if save_status == true
          redirect_to("http://localhost:3000/", :notice => "Profile created successfully.")
        else
          render("/users/create_profile/")
        end



  end

  def update_preferences
    @user = Profile.find_by(:user_id => current_user.id)

  end

  def show_profile
    @user = Profile.find_by(:user_id => params[:id])
  end

  def show_collabs
    @requests = Request.where(:user_id => params[:id])

    @selectedusers = Selecteduser.where(:selected_user_id => params[:id])


  end


end
