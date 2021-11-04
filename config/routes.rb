Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'tasks', to: 'tasks#index'
  # get 'tasks/new', to: 'tasks#new'
  # get 'tasks/:id', to: 'tasks#show', as: :task
  # post 'tasks', to: 'tasks#create'
  # get 'tasks/:id/edit', to: 'tasks#edit'
  # patch 'tasks/:id', to: 'tasks#update'
  resources :tasks
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy
end
