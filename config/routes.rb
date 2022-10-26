Rails.application.routes.draw do
  root to: "homes#top"
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :books, only: [:new, :index, :show, :create, :edit, :update, :destroy] do
      resources :book_comments, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
    end
  resources :users, only: [:index, :show, :edit, :new, :create, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
