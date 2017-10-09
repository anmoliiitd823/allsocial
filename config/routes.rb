Rails.application.routes.draw do
<<<<<<< HEAD
  	
  post 'friendships/create'
  get 'friendships/create'
  delete 'friendships/destroy' => 'friendships#destroy'
  get 'friendships/destroy'
  post 'friendships/accept'
	post 'likes/toggle_comment_like/' => 'likes#toggle_comment_like'
	post 'likes/toggle_post_like/' => 'likes#toggle_post_like'

=======
>>>>>>> 9c85a46a125b76c917caa1a48018fc6aad094960
  get 'comments/create'

  get 'comments/destroy'

  devise_for :users
<<<<<<< HEAD
  get 'users/filter_by_email' => 'users#filter_by_email'
  get 'users/:id' => 'users#show', as: :user_show
  get 'user/:id' => 'users#show'
  patch 'user/:id' => 'users#update', as: :user
=======
>>>>>>> 9c85a46a125b76c917caa1a48018fc6aad094960
  resources :posts, only: [:index, :create, :destroy]
  resources :comments, only: [:create, :destroy]

  root "posts#index"
end
