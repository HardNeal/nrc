Rails.application.routes.draw do
  resources :tokens, only: %i[index show] do
    collection do
      get :deposit
      get :withdraw
      get :check
    end
  end
end
