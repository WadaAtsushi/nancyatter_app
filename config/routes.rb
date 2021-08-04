Rails.application.routes.draw do
  root 'nancyatterapps#top'

  get       'nancyatterapps_new', to: 'nancyatterapps#new',     as:'app_new'
  post   'nancyatterapps_create', to: 'nancyatterapps#create',  as:'newapp_create'
  get     'nancyatterapps_index', to: 'nancyatterapps#index',   as:'app_index'
  get 'nancyatterapps_login/:id', to: 'nancyatterapps#login',   as:'app_login'
  get    'nancyatterapps_logout', to: 'nancyatterapps#logout',  as:'app_logout'

  get        'signin', to: 'users#signin',  as: 'signin'
  post  'user_create', to: 'users#create',  as: 'user_create'
  get  'users_index',  to: 'users#index',   as: 'users_index'
  get     'user_show', to: 'users#show',    as: 'user_show'

  get     'menbur_new', to: 'menburs#new',      as: 'menbur_new'
  post 'menbur_create', to: 'menburs#create',   as: 'menbur_create'
  get  'menburs_index', to: 'menburs#index',    as:  'menburs_index'
 
  get    'login', to: 'sessions#new',     as: 'login_form'
  post   'login', to: 'sessions#create',  as: 'login_action'
  get   'logout', to: 'sessions#destroy', as: 'logout'

  get     'posts_top/:id', to: 'posts#top',     as: 'posts_top'
  get          'post_new', to: 'posts#new',     as: 'post_new'
  post      'post_create', to: 'posts#create',  as: 'post_create'
  get        'post/index', to: 'posts#index',   as: 'post_index'
  get     'post_show/:id', to: 'posts#show',    as: 'post_show'
  get     'post_edit/:id', to: 'posts#edit',    as: 'post_edit'
  patch 'post_update/:id', to: 'posts#update',  as: 'post_update'
  get  'post_destroy/:id', to: 'posts#destroy', as: 'post_destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
