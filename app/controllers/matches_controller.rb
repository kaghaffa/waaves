class MatchesController  < ApplicationController

def search_form
end


def add_row
r = Request.new
r.user_id = current_user.id
r.genreselect = params[:genreselect]
r.skillsearch_production = params[:skillsearch_production]
r.skillsearch_vocals = params[:skillsearch_vocals]
r.skillsearch_liveinstrumentation = params[:skillsearch_liveinstrumentation]
r.skillsearch_mixingandmastering = params[:skillsearch_mixingandmastering]
r.search_text = params[:search_text]
r.save

  redirect_to("/search/results/production/#{r.id}")
end


def results_production
    @request = Request.find(params[:id])

    @results = User.where(production:true)
    


end

def results_vocals
    @request = Request.find(params[:id])

    @results = User.where(vocals:true)


end

def results_instruments
    @request = Request.find(params[:id])

    @results = User.where(liveinstrumentation:true)


end

def results_mixandmaster
    @request = Request.find(params[:id])

    @results = User.where(mixingandmastering:true)


end


end
