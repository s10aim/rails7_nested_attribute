Rails.application.routes.draw do
  resources :events do
    collection do
      resources :speakers, only: [:new]
    end
  end
end
