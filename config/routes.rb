Rails.application.routes.draw do
  root 'home#index'

  scope :v1, defaults: { format: :json } do
    resources :sections, only: [:index]
  end
end
