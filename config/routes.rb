Rails.application.routes.draw do
  get '/', to: 'project#index'

  get 'project/update'

  get 'project/create'

  get '/todo', to: 'todo#index'

  get '/update', to: 'todo#update'

  get '/create', to: 'todo#create'

  post '/create', to: 'todo#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
