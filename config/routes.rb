Rails.application.routes.draw do
    root to: 'static_pages#root'
    
    namespace :api, defaults: { format: :json } do
      resources :calendar_dates, only: [:index, :show] do
        resources :events, only: [:new]
      end

      resources :events, except: [:new]
    end
  end
