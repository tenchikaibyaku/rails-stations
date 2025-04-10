Rails.application.routes.draw do
  root "movies#index"

  namespace :admin do
    resources :movies, only: [:index, :new, :create, :edit, :update, :destroy]
    #                                ↑ここに :destroy を追加
  end

  resources :movies, only: [:index]
end
