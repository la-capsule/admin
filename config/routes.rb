Rails.application.routes.draw do
  resources :periods

  devise_for :users
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  resources :users

  get '/dashboard' => "dashboard#index", as: :user_root
  get '/order/:id' => "dashboard#order", as: :order_dashboard
end
