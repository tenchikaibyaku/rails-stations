Rails.application.routes.draw do
  namespace :admin do
    resources :movies, only: [:index]
  end

  # 他のルートもここに書く
end
