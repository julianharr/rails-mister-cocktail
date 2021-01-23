Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, except: :destroy
  end

  resources :doses, only: :destroy
end
