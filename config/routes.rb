Rails.application.routes.draw do
  resources :recipes do 
    resources :comments, only: [:create]
  end

  root to: 'pages#home'

#===============SESSION ROUTES==================

get '/login' =>'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

#=========== USER ROUTES =============

#create ###############################################################
  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'

  #read##################################################################

  get '/users' => 'users#index'
  
  get '/users/:id' => 'users#show', as: 'user'

  #update################################################################
  get '/users/:id/edit' => 'users#edit', as: 'edit_user'

  patch '/users/:id' => 'users#update'


  #DELETE##############################################################

  
#=========== RECIPE ROUTES =============




#create ###############################################################
# get '/recipes/new' => 'recipes#new', as: 'new_recipe'

# post '/recipes' => 'recipes#create'

# #read##################################################################
# get '/recipes' => 'recipes#index'


# get '/recipes/:id' => 'recipes#show', as: 'recipe'

# #update################################################################

# get '/recipes/:id/edit' => 'recipes#edit', as: 'edit_recipe'

# patch '/recipes/:id' => 'recipes#update'


# #DELETE##############################################################

# delete '/recipes/:id' => 'recipes#destroy'

end
