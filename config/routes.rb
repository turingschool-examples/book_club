Rails.application.routes.draw do
  get '/', to: 'books#index'
	get '/books', to: 'books#index'
	get '/authors', to: 'authors#index'

  resources :books, only: :index
  resources :authors, only: :show do
    resources :books, only: [:new, :create]
  end
end
