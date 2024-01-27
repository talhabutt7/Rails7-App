Rails.application.routes.draw do
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  devise_for :users
  # Set Devise as the root route
  # devise_scope :user do
  #   authenticated :user do
  #     root to: "homepage#index", as: :authenticated_root
  #   end
  #
  #   unauthenticated do
  #     root 'devise/sessions#new', as: :unauthenticated_root
  #   end
  # end

  get 'homepage/index'
  # Set Homepage index as the root route
  root "homepage#index"
end
