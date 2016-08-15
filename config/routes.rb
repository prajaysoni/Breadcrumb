Rails.application.routes.draw do
  root 'welcome#index'

  get '/faq' => 'welcome#faq'
  resources :tags, only: [:index]
  devise_for :users

  get '/users/:user_id/add/:id' => 'favorites#add'
  get '/users/:user_id/remove/:id' => 'favorites#remove'
  get '/users/:id' => 'users#show', :as => :user
  get '/set_coords' => 'users#set_user_coords'

  resources :trails do
    resources :crumbs, except: [:index ]
  end

  get '/trails/:id/publish' => 'trails#publish'
  get '/trails/:id/remove/:tag_id' => 'trails#removetag'
  get '/trails/:id/add/:tag_id' => 'trails#addtag'

  resources :actives, only: [:show] do
    resources :active_crumbs, only: [:show, :update]
  end

  get '/actives/:id/join' => 'actives#join'
  post '/actives/:id/joined' => 'actives#joined'
  delete '/actives/:id' => 'actives#destroy'
  get '/actives/:id/mapdetails' => 'actives#mapdetails', :as => :active_mapdetails


end
