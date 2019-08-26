Rails.application.routes.draw do

  devise_for :admins, :controllers => {
    :registrations => 'admins/registrations',
    :sessions => 'admins/sessions',
    :password => 'admins/password'
  }

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :password => 'users/password'
  }

  namespace :admin do
    resources :posts, only: [:index, :show, :edit, :new, :create, :update, :destroy]
    resources :users, only: [:index, :show, :edit, :update]
    resources :regions, only: [:edit, :new, :create, :update, :destroy]
    resources :seasons, only: [:edit, :new, :create, :update, :destroy]
  end
  namespace :user do
    resources :posts, only: [:index, :show, :new, :create, :destroy]
    resources :users, only: [:show, :edit, :create, :update]
    resources :favotites, only: [:create, :destroy]
    resources :comments, only: [:new, :show, :create, :destroy]
  end

  root 'user/homes#top'
  get '/admin' => 'admin/homes#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
