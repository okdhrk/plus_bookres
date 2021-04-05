Rails.application.routes.draw do

  get 'books/index'
  get 'books/show'
  get 'users/index'
  get 'users/show'
  devise_for :users

  root to: 'homes#top'

end

