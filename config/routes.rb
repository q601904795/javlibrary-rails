Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :videos, only:[:index, :show] do
    collection do
      get :search
    end
  end

  resources :actors, only:[:index, :show]
  resources :stars, only:[:index, :show]
  root 'welcome#index'
end
