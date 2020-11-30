Rails.application.routes.draw do
  get '/' => 'home#index'
  get '/terms' => 'terms#show'

  resource :contacts, only: [:new, :create], path_names: {:new=>''}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles
end
