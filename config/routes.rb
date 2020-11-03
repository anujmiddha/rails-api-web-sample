# frozen_string_literal: true

Rails.application.routes.draw do
  authenticated :user do
    root to: 'web/dashboard#index', as: :authenticated_user_root
  end

  root to: redirect('/users/sign_in')

  devise_for :users

  namespace :web do
    get 'dashboard/index'
  end

  # API end points
  namespace :api do
    scope module: :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      get 'sample/index'
    end
  end
end
