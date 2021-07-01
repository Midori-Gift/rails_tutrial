Rails.application.routes.draw do

  get 'users/following'
  get 'users/followers'
  devise_for :users
  # get 'questions/index'
  # get 'questions/show'
  # get 'questions/new'
  # get 'questions/edit'

  root 'homes#top'
  resources :questions, only:[:new, :index, :create, :edit, :update]

  resources :users do
      member do
          get :following, :followers
      end
    end
    resources :relationships, only: [:create, :destroy]
    
    post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
    post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す

  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
