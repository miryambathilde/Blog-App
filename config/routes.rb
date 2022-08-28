Rails.application.routes.draw do
  devise_for :authors
  get 'home/posts'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "authors/posts#index"
  # authors now is insided de scope of authors = Authors::PostsController
  scope module: 'authors' do
    resources :posts
  end
end
