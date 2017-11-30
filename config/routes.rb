Rails.application.routes.draw do
  resources :portfolios
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  devise_for :users, path:'',path_names: {sign_in:'login',sign_out:'logout',sign_up:'register'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "candidates#index"
  resources :candidates do
    member do
      post :vote
    end
  end



end
