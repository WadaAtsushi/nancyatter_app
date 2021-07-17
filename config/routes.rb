Rails.application.routes.draw do
  get root 'posts#top'

  get 'aprications/new'
  get 'aprications/admin'
  get 'aprications/top'

  get       '/signin', to: 'users#signin',   as: 'signin'
  post '/user_create', to: 'users#create',   as: 'user_create'
  get 'users/login_form'
  get 'users/index'
  
  get 'posts/new'
  get 'posts/index'
  get 'posts/show'
  get 'posts/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
