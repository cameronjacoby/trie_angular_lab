Rails.application.routes.draw do
  root to: "words#index"
  resources :words, only: [:index, :create, :show]
  resources :word_templates, only: [:index]
end