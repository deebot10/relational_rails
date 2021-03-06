Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/', to: 'hello#index'
  root 'hello#index' 
  resources :nbateams, only: [:new, :create] 
  get '/nbateams',                     to: 'nbateams#index'
  get '/nbateams/:id',                 to: "nbateams#show",    as: 'nba_show' 
  # get '/nbateams/new',                 to: 'nbateams#new' 
  # post '/nbateams',                    to: 'nbateams#create'  
  get '/players/',                     to: 'players#index'
  get '/players/:id',                  to: 'players#show',      as: 'player_show'
  get '/nbateams/:nba_id/players',     to: 'nba_players#index', as: 'nba_players' 
  get '/nbateams/:id/edit',            to: 'nbateams#edit'
  patch '/nbateams/:nba_id',           to: 'nbateams#update' 
  get '/nbateams/:nba_id/players/new', to: 'nba_players#new',   as: 'new_nba_player'
  post '/nbateams/:nba_id/players',    to: 'nba_players#create' 
  get  '/players/:id/edit',            to: 'players#edit',      as: 'edit_player' 
  patch '/players/:id',                to: 'players#update' 
  delete 'nbateams/:id',               to: 'nbateams#destroy'
  delete 'players/:id',                to: 'players#destroy'
  #A
  #read ranges
  get '/mountain_ranges', to: 'mountain_ranges#index'
  #create range
  get '/mountain_ranges/new', to: 'mountain_ranges#new'
  post '/mountain_ranges', to: 'mountain_ranges#create'
  #read single range
  get "/mountain_ranges/:id", to: 'mountain_ranges#show'
  #edit a range
  get '/mountain_ranges/:id/edit', to: 'mountain_ranges#edit'
  patch '/mountain_ranges/:id', to: 'mountain_ranges#update'
  #delete a range
  delete '/mountain_ranges/:id', to: 'mountain_ranges#delete'
  #mountains in a range
  get "/mountain_ranges/:mountain_range_id/mountains", to: 'range_mountains#index', as: :mountains_range
  #add new mountain to range
  match "/mountain_ranges/:mountain_range_id/mountains/new", to: 'range_mountains#new', :via => :get
  post "/mountain_ranges/:mountain_range_id/mountains", to: 'range_mountains#create'
  #edit mountain in range
  get "/mountain_ranges/:mountain_range_id/mountains/:mountain_id/edit", to: 'range_mountains#edit'
  patch "/mountain_ranges/:mountain_range_id/mountains/:mountain_id", to: 'range_mountains#update'


  #create mountain
  get '/mountains/new', to: 'mountains#new'
  post '/mountains', to: 'mountains#create'
  #read all mountains
  get '/mountains', to: 'mountains#index'
  #read single mountain
  get '/mountains/:id', to: 'mountains#show'
  #edit single mountain
  get '/mountains/:id/edit', to: 'mountains#edit'
  patch '/mountains/:id', to: 'mountains#update'
  #delete a mountain
  delete '/mountains/:id', to: 'mountains#delete'
end
