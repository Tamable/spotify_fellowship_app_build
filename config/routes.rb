Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :calendar_dates, only: [:index, :show] do
    resources :events, only: [:new]
  end

  resources :events, except: [:new]
end
