Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }


  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'table', to: 'tables#show'
  get 'chart', to: 'charts#show'
  get 'news', to: 'pages#bitcoin_news'
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
end
