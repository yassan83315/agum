Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  namespace :admin do
    resources :posts, only: [:index, :show, :edit, :new, :create, :update, :destroy]
    resources :users, only: [:index, :show, :edit, :update]
    resources :regions, only: [:edit, :new, :create, :update, :destroy]
    resources :seasons, only: [:edit, :new, :create, :update, :destroy]
  end
  namespace :user do
    resources :posts, only: [:index, :show, :edit, :new, :create, :update, :destroy]
    resources :users, only: [:show, :edit, :create, :update]
    resources :favotite, only: [:create, :destroy]
  end

  root 'user/homes#top'
  get '/admin' => 'admin/homes#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
