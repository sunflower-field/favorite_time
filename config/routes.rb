Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: 'users/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  root to: 'homes#top'

  namespace :users do
    resources :post_favtimes
    resources :post_comments
    resources :likes, only: [:create, :destroy]
    resources :post_tags, only: [:index, :show, :destroy]
  end

  namespace :admin do
    root to: 'homes#top'
    resources :post_favtimes, only: [:index, :show, :edit, :update]
    resources :users, only: [:index, :show, :edit, :update]
    resources :post_comments, only: [:index, :show, :destroy]
  end

end
