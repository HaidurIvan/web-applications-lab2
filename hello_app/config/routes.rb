Rails.application.routes.draw do
  resources :microposts
  resources :users

  # Розділ 4: дії hello і goodbye з ApplicationController.
  # Під час практичного завдання root вказував на них:
  #   root "application#hello"
  #   root "application#goodbye"
  get "hello",   to: "application#hello"
  get "goodbye", to: "application#goodbye"

  # Перевірка стану застосунку (стандартний маршрут Rails)
  get "up" => "rails/health#show", as: :rails_health_check

  # Розділ 5.2.2: головна сторінка — список користувачів
  root "users#index"
end
