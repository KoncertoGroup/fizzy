Rails.application.routes.draw do
  root "projects#index"

  resource :session

  resources :projects do
    resource :access, controller: "projects/accesses"

    resources :bubbles do
      resource :image, controller: "bubbles/images"

      resources :assignments
      resources :boosts
      resources :comments
      resources :tags, shallow: true
    end

    resources :tags, only: :index
  end

  get "up", to: "rails/health#show", as: :rails_health_check
end
