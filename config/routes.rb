Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#sign_up"
  resources :candidates do
    member do
      post :vote
    end
  end



end
