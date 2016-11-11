Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Registration
  get('/', {:controller => 'users', :action => 'home'})
  get('/users/create_profile/', {:controller => 'users', :action => 'create_profile'})
  get('/users/update_row', {:controller => 'users', :action => 'update_row'})
  get('/users/edit/preferences', {:controller => 'users', :action => 'update_preferences'})

  #Matching
  get('/search', {:controller => 'matches', :action => 'search_form'})
  get('/search/results/production/:id', {:controller => 'matches', :action => 'results_production'})
  get('/search/results/vocals/:id', {:controller => 'matches', :action => 'results_vocals'})
  get('/search/results/instruments/:id', {:controller => 'matches', :action => 'results_instruments'})
  get('/search/results/mixandmaster/:id', {:controller => 'matches', :action => 'results_mixandmaster'})
  get('/search/matchmaking', {:controller => 'matches', :action => 'add_row'})
end
