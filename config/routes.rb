Rails.application.routes.draw do
  devise_for :users
  devise_for :businesses
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, shallow: true do
    resources :communicates
    resources :bad_reports
  end

  resources :businesses, shallow: true do
    resources :shops
    resources :communicates
  end

  resources :shops, shallow: true do
    resources :users
    resources :communicates
    resources :bad_reports
  end
end
