Rails.application.routes.draw do

  resources :tasks

  #get 'tasks', to:"tasks#index",  as: :index
  #get 'tasks/new', to:"tasks#new"
  #post 'tasks', to:"tasks#create", as: :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'tasks/:id', to:"tasks#show", as: :task
  # get 'tasks/:id/edit', to:"tasks#edit"
  # patch 'tasks/:id', to:"tasks#update"

  # delete 'tasks/:id, to:"tasks#delete", as: :delete

end
