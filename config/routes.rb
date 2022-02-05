Rails.application.routes.draw do

  root to: "homes#top"
  devise_for :users
  #devise_for :users は、devise を使用する際に URL として users を含むことを示しています。

  get 'homes/about' => 'homes#about', as: 'about'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end
