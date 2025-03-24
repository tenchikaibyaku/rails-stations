Rails.application.routes.draw do
  resources :movies, only: [:index]  # /movies へのGETリクエストを許可
end
