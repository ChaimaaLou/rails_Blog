Rails.application.routes.draw do
  get 'utilisateurs/new'
  root 'pages#home'
  get 'aide' => 'page#aide'
  get 'contact' => 'page#contact'
  get 'inscription' => 'utilisateurs#new'

  resources :utilisateurs
  get 'login'  => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' =>  'sessions#destroy'

  resources :articles, only:[:create,:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
