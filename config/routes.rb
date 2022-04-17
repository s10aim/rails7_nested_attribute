Rails.application.routes.draw do
  resources :events do
    collection do
      resources :speakers, only: [:new]
    end
  end
  resources :removal_fields, only: %i[new edit]
end
