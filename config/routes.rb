Rails.application.routes.draw do
  get '/' => 'home#index'
  get '/contacts' => 'home#contacts'
  post '/contacts' => 'home#create_contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles
end
