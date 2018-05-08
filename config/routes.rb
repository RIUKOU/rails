Rails.application.routes.draw do
  # get 'members/new', to: 'members#new'
  # get 'members/show/:id', to: 'members#show', as: 'members/show'
  # post 'members/create', to: 'members#create'
  # get 'members/index'
  # get 'members/:id/edit', to: 'members#edit'
  # patch 'members/:id/update', to: 'members#update'
  # delete 'members/:id/delete', to: 'members#delete'
  resources :members
  root "members#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
