Rails.application.routes.draw do
  devise_for :users
  root "top#index"
  resources :products, only: [:new, :create, :show]
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
