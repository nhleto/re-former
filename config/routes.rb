Rails.application.routes.draw do
  resources :users, only: [:new, :create, :index, :edit, :update]
end
