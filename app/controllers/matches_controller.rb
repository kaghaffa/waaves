class MatchesController  < ApplicationController

  def search_form
@request = Request.new
  end


  def add_row
    r = Request.new
    r.user_id = current_user.id
    r.genreselect = params[:genreselect]
    r.skillsearch_production = params[:skillsearch_production]
    r.skillsearch_vocals = params[:skillsearch_vocals]
    r.skillsearch_liveinstrumentation = params[:skillsearch_liveinstrumentation]
    r.skillsearch_mixingandmastering = params[:skillsearch_mixingandmastering]
@request = r
    save_status = r.save

    if save_status == true
      if r.skillsearch_production
        redirect_to("/search/results/production/#{r.id}")
      elsif r.skillsearch_vocals
        redirect_to("/search/results/vocals/#{r.id}")
      elsif r.skillsearch_liveinstrumentation
        redirect_to("/search/results/instruments/#{r.id}")
      elsif r.skillsearch_mixingandmastering
        redirect_to("/search/results/mixandmaster/#{r.id}")
      end
    else
      render("/matches/search_form.html.erb")
    end


  end


  def results_production
    @request = Request.find(params[:id])

    requested_genre = @request.genreselect
    requester_goal = Profile.find_by(:user_id => current_user.id).goals
    requester_experience = Profile.find_by(:user_id=>current_user.id).experience

    @results = Profile.where(production:true).sort_by {|profile| profile.relevancescore(requested_genre, requester_goal, requester_experience) }.reverse.take(5)

    @desired_skill = "Production"

  end

  def results_vocals
    @request = Request.find(params[:id])

    requested_genre = @request.genreselect
    requester_goal = Profile.find_by(:user_id => current_user.id).goals
    requester_experience = Profile.find_by(:user_id=>current_user.id).experience

    @results = Profile.where(vocals:true).sort_by {|user| user.relevancescore(requested_genre, requester_goal, requester_experience) }.reverse.take(5)


    @desired_skill = "Vocals"


  end

  def results_instruments
    @request = Request.find(params[:id])

    requested_genre = @request.genreselect
    requester_goal = Profile.find_by(:user_id => current_user.id).goals
    requester_experience = Profile.find_by(:user_id=>current_user.id).experience

    @results = Profile.where(liveinstrumentation:true).sort_by {|profile| profile.relevancescore(requested_genre, requester_goal, requester_experience) }.reverse.take(5)

    @desired_skill = "Live Instrumentation"

  end

  def results_mixandmaster
    @request = Request.find(params[:id])

    requested_genre = @request.genreselect
    requester_goal = Profile.find_by(:user_id => current_user.id).goals
    requester_experience = Profile.find_by(:user_id=>current_user.id).experience

    @results = Profile.where(mixingandmastering:true).sort_by {|profile| profile.relevancescore(requested_genre, requester_goal, requester_experience) }.reverse.take(5)

    @desired_skill = "Mixing and Mastering"

  end


end
