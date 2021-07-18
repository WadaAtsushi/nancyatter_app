Rails.application.routes.draw do
  get 'sessions/new'
  get root 'posts#top'

  get 'aprications/new'
  get 'aprications/admin'
  get 'aprications/top'

  get       'signin', to: 'users#signin',   as: 'signin'
  post 'user_create', to: 'users#create',   as: 'user_create'
  get   'login', to: 'sessions#new',    as: 'login_form'
  post       'login', to: 'sessions#create',   as: 'login_action'
  get   'logout', to: 'users#logout',  as: 'logout'
  get 'users_index',  to: 'users#index',   as: 'users_index'
  
  get 'posts/new'
  get 'posts/index'
  get 'posts/show'
  get 'posts/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
