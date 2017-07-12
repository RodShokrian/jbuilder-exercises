Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :parties, only: [ :index, :show ]
    resources :guests, only: [ :index, :show ] do
      resources :gifts, only: [:index]
    end
    resources :gifts, only: [ :show ]
    resources :invitations, only: [ :index, :show ]
  end
end
