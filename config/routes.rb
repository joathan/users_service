# frozen_string_literal: true

Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check

  resources :users, only: [:create]
  post 'login', to: 'sessions#create'
end
