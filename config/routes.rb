Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :restaurants, only: %i[index show] do
    resources :visits, only: %i[create update]
  end
end
