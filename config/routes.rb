Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
    collection do
      get :search
    end
  end
end
