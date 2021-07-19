Rails.application.routes.draw do
  get root 'posts#top'

  get 'aprications/new'
  get 'aprications/admin'
  get 'aprications/top'

  get       'signin', to: 'users#signin',  as: 'signin'
  post 'user_create', to: 'users#create',  as: 'user_create'
  get 'users_index',  to: 'users#index',   as: 'users_index'

  get    'login', to: 'sessions#new',     as: 'login_form'
  post   'login', to: 'sessions#create',  as: 'login_action'
  get   'logout', to: 'sessions#destroy', as: 'logout'

  get     'post_new', to: 'posts#new',    as: 'post_new'
  post 'post_create', to: 'posts#create', as: 'post_create'
  get   'post_index', to: 'posts#index',  as: 'post_index'
  get 'posts/show'
  get 'posts/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
