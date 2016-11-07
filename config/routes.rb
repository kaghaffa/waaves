Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get('/', {:controller => 'users', :action => 'home'})
  get('/users/create_profile', {:controller => 'users', :action => 'create_profile'})
end
