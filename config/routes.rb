Rails.application.routes.draw do
  devise_for :models
  get 'home/index'
  root 'home#index'
  get 'dashboard', to: 'home#dashboard', as: 'dash'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
