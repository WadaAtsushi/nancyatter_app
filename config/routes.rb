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

  get          'post_new', to: 'posts#new',     as: 'post_new'
  post      'post_create', to: 'posts#create',  as: 'post_create'
  get        'post/index', to: 'posts#index',   as: 'post_index'
  get     'post_show/:id', to: 'posts#show',    as: 'post_show'
  get     'post_edit/:id', to: 'posts#edit',    as: 'post_edit'
  patch 'post_update/:id', to: 'posts#update',  as: 'post_update'
  get  'post_destroy/:id', to: 'posts#destroy', as: 'post_destroy'
  get  'posts/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
