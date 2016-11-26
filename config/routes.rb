Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Registration
  get('/', {:controller => 'users', :action => 'home'})
  get('/users/create_profile/', {:controller => 'users', :action => 'create_profile'})
  get('/users/update_row', {:controller => 'users', :action => 'update_row'})
  get('/users/edit/preferences', {:controller => 'users', :action => 'update_preferences'})
  get('/users/profile/:id', {:controller => 'users', :action => 'show_profile'})
  get('/collabs/:id', {:controller => 'users', :action => 'show_collabs'})

  #Match
  get('/search', {:controller => 'matches', :action => 'search_form'})
  get('/search/results/production/:id', {:controller => 'matches', :action => 'results_production'})
  get('/search/results/vocals/:id', {:controller => 'matches', :action => 'results_vocals'})
  get('/search/results/instruments/:id', {:controller => 'matches', :action => 'results_instruments'})
  get('/search/results/mixandmaster/:id', {:controller => 'matches', :action => 'results_mixandmaster'})
  get('/search/matchmaking', {:controller => 'matches', :action => 'add_row'})


  #Chat
  get('/accept_user/:request_id/:requestee_id/:desired_skill', {:controller => 'chats', :action => 'accept_user'})
  get('/chat/:request_id', {:controller => 'chats', :action => 'show'})
  get('/new_chat/:request_id', {:controller => 'chats', :action => 'new_chat'})
  post('/send_file', {:controller => 'chats', :action => 'new_file'})
  post('/update_request/:request_id', {:controller => 'chats', :action => 'update_request'})
  get('/download_file/:id', {:controller => 'chats', :action => 'download_file'})


  post('/add_song', {:controller => 'chats', :action => 'add_song'})
  get('/showcase', {:controller => 'chats', :action => 'showcase'})

  #Comment
  post('/create_comment', {:controller => 'comments', :action => 'create_comment'})

#Likes
  post('/create_like', {:controller => 'likes', :action => 'create_like'})



end
