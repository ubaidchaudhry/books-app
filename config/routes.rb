Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :destroy] do
    collection do
      get :assign_tag
      put :assign_tag_to
    end
  end

  root "books#index"
end
