Rails.application.routes.draw do
  root 'cocktails#index'

  resources :cocktails do
    resources :doses, except: :destroy
  end

  resources :doses, only: :destroy
end
