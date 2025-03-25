Rails.application.routes.draw do
  root "movies#index" # ← これはそのままでOK

  namespace :admin do
    resources :movies, only: [:index, :new, :create, :edit, :update] # ← ここに :edit, :update を追加
  end

  resources :movies, only: [:index] # ← root に指定するには必要
end
