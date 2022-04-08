Rails.application.routes.draw do
  resources :events do
    collection do
      resources :speakers, only: [:new]
      resources :removal_speakers, only: %i[new edit]
    end
  end
end
