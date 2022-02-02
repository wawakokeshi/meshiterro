Rails.application.routes.draw do

  root to: "homes#top"
  devise_for :users
  #devise_for :users は、devise を使用する際に URL として users を含むことを示しています。

  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]

  get 'homes/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
