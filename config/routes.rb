Rails.application.routes.draw do

  root :to => 'project#index'

  put '/project', to: 'project#update'

  post '/project', to: 'project#create'

  get '/todo', to: 'todo#index'

  put '/todo', to: 'todo#update'

  post '/todo', to: 'todo#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
