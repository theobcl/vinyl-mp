Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users

  get "/dashboard", to: "pages#dashboard"

  resources :users, only: :show do
    resources :vinyls, only: [:new, :create, :edit, :update]
  end

  resources :vinyls, only: [:index, :show, :delete]
end
