Rails.application.routes.draw do
  namespace :admin do
    resources :posts, only: [:index, :show, :edit, :new, :create, :update, :destroy]
    resources :users, only: [:index, :show, :edit, :update]
  end
  namespace :user do
    resources :posts, only: [:index, :show, :edit, :new, :create, :update, :destroy]
    resources :users, only: [:show, :edit, :create, :update]
  end

  root 'user/homes#top'
  get '/admin' => 'admin/homes#top'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
