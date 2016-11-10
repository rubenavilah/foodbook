Rails.application.routes.draw do
  resources :dishes
  root "static_pages#index"
end
